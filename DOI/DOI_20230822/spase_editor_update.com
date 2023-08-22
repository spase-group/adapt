
DOI=$1

REGISTRY_DIRECTORY=$2

COLLATION_DIRECTORY=$3

XML_FILE_NAME=$4

URL_CHECK=$5

HASHES=$(printf "%0.s#" $(seq 1 275))

DASHES='+'$(printf "%0.s-" $(seq 1 273))'+'

SPASE_RESOURCE_ID=`grep '<ResourceID>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/spase:\/\///'`

SPASE_EDITOR_UPDATE_TAB_FILE_NAME=$REGISTRY_DIRECTORY/spase_editor_update.tab

REVISE_INITIALS=`grep '	'$SPASE_RESOURCE_ID'	' $SPASE_EDITOR_UPDATE_TAB_FILE_NAME | awk 'BEGIN { FS="	" } ; { print $4 }'`

REVIEW_INITIALS=`grep '	'$SPASE_RESOURCE_ID'	' $SPASE_EDITOR_UPDATE_TAB_FILE_NAME | awk 'BEGIN { FS="	" } ; { print $5 }'`

METADATA_CONTACT=`grep '	'$SPASE_RESOURCE_ID'	' $SPASE_EDITOR_UPDATE_TAB_FILE_NAME | awk 'BEGIN { FS="	" } ; { print $6 }'`

REVISION_NOTE=`grep '	'$SPASE_RESOURCE_ID'	' $SPASE_EDITOR_UPDATE_TAB_FILE_NAME | awk 'BEGIN { FS="	" } ; { print $7 }'`

SPASE_RESOURCE_ID_REVISED=`grep '	'$SPASE_RESOURCE_ID'	' $SPASE_EDITOR_UPDATE_TAB_FILE_NAME | awk 'BEGIN { FS="	" } ; { print $8 }'`

COLLATION_FILE_NAME=$COLLATION_DIRECTORY/$SPASE_RESOURCE_ID'.xml'

DATE=`date`

printf "%s\n\nStart Date:\t%s\n\n%s\n\nOld File:\t%s\nNew File:\t%s\n\n%s\n\n" $HASHES "$DATE" $HASHES $REGISTRY_DIRECTORY/$SPASE_RESOURCE_ID.xml $XML_FILE_NAME $DASHES

if [ ! -d $REGISTRY_DIRECTORY/WORK ]; then mkdir -p $REGISTRY_DIRECTORY/WORK; fi

if [ -e $REGISTRY_DIRECTORY/$SPASE_RESOURCE_ID.xml ]; then

   FILE_STATUS=OLD

   cp -p $REGISTRY_DIRECTORY/$SPASE_RESOURCE_ID.xml $REGISTRY_DIRECTORY/WORK/spase_editor_update_old_$$.xml

   cp -p $XML_FILE_NAME $REGISTRY_DIRECTORY/WORK/spase_editor_update_new_$$.xml

   spase_xml_tab_wrapper.com $REGISTRY_DIRECTORY/WORK/spase_editor_update_old_$$.xml

   RELEASE_DATE_PRIOR=`grep ^'\ \ \ \ \ \ \ \ \ <ReleaseDate>' $REGISTRY_DIRECTORY/WORK/spase_editor_update_old_$$.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/Z$//'`

   spase_xml_tab_wrapper.com $REGISTRY_DIRECTORY/WORK/spase_editor_update_new_$$.xml

   printf "\n%s\n\n" $DASHES

   DIFF_NUM=`diff $REGISTRY_DIRECTORY/WORK/spase_editor_update_old_$$.xml $REGISTRY_DIRECTORY/WORK/spase_editor_update_new_$$.xml | sed 's/^/'$REVISE_INITIALS'	/' | wc -l | awk '{ print $1 }'`

   if [ $DIFF_NUM -gt 0 ]; then

      diff $REGISTRY_DIRECTORY/WORK/spase_editor_update_old_$$.xml $REGISTRY_DIRECTORY/WORK/spase_editor_update_new_$$.xml | sed 's/^/'$REVISE_INITIALS'	/'

      echo

   else

      printf "%s\tNo updates\n\n" $REVISE_INITIALS

   fi

   rm $REGISTRY_DIRECTORY/WORK/spase_editor_update_old_$$.xml

   mv $REGISTRY_DIRECTORY/WORK/spase_editor_update_new_$$.xml $XML_FILE_NAME

else

   FILE_STATUS=NEW

   RELEASE_DATE_PRIOR=`date "+%Y-%m-%d"`'T12:34:56.789'

fi

RELEASE_DATE=`date "+%Y-%m-%d"`'T12:34:56.789'

SPASE_RESOURCE_ID=`grep '<ResourceID>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/spase:\/\///'`

if [ ! $SPASE_RESOURCE_ID_REVISED ]; then

   OUTPUT_DIRECTORY=$REGISTRY_DIRECTORY/$COLLATION_DIRECTORY/`dirname $SPASE_RESOURCE_ID`

   COLLATION_FILE_NAME=$OUTPUT_DIRECTORY/`basename $SPASE_RESOURCE_ID`.xml

else

   OUTPUT_DIRECTORY=$REGISTRY_DIRECTORY/$COLLATION_DIRECTORY/`dirname $SPASE_RESOURCE_ID_REVISED`

   COLLATION_FILE_NAME=$OUTPUT_DIRECTORY/`basename $SPASE_RESOURCE_ID_REVISED`.xml

fi

if [ ! -d $OUTPUT_DIRECTORY ]; then mkdir -p $OUTPUT_DIRECTORY; fi

SPASE_RESOURCE_TYPE=`echo $SPASE_RESOURCE_ID | awk 'BEGIN { FS="/" } ; { print $2 }'`

if [ $SPASE_RESOURCE_TYPE != "Person" ]; then

   XML_FILE_NAME_TEMP=$REGISTRY_DIRECTORY/WORK/spase_editor_update_update_$$.xml

   sed -f spase_editor_update.sed $XML_FILE_NAME >& $XML_FILE_NAME_TEMP

   XML_FILE_LINE_NUM=`wc -l $XML_FILE_NAME_TEMP | awk '{ print $1 }'`

   SPASE_RESOURCE_TYPE_LINE_NUM=`grep -n ^'\ \ \ <'$SPASE_RESOURCE_TYPE'>' $XML_FILE_NAME_TEMP | awk 'BEGIN { FS=":" } ; { print $1 }'`

   RELEASE_DATE_LINE_NUM=`grep -n ^'\ \ \ \ \ \ \ \ \ <ReleaseDate>' $XML_FILE_NAME_TEMP | awk 'BEGIN { FS=":" } ; { print $1 }'`

   CONTACT_LINE_NUM_LAST=`grep -n ^'\ \ \ \ \ \ \ \ \ </Contact>' $XML_FILE_NAME_TEMP | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

   HEAD_NUM=$((RELEASE_DATE_LINE_NUM-1))

   TAIL_NUM=$((RELEASE_DATE_LINE_NUM-SPASE_RESOURCE_TYPE_LINE_NUM))

   echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > $COLLATION_FILE_NAME

   echo '<Spase xmlns="http://www.spase-group.org/data/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.spase-group.org/data/schema http://www.spase-group.org/data/schema/spase-2_6_0.xsd">' >> $COLLATION_FILE_NAME

   echo '   <Version>2.6.0</Version>' >> $COLLATION_FILE_NAME

   head -$HEAD_NUM $XML_FILE_NAME_TEMP | tail -$TAIL_NUM >> $COLLATION_FILE_NAME

   DOI_NUM=`grep -c '<DOI>' $XML_FILE_NAME_TEMP`

   if [ $DOI_NUM -eq 0 ]; then

      DOI_STATUS=NEW

      AUTHORS=`grep ^$SPASE_RESOURCE_ID'	' datacite_json_doi_info_all.tab | awk 'BEGIN { FS="	" } ; { print $4 }'`

      PUBLICATION_DATE=`grep ^$SPASE_RESOURCE_ID'	' datacite_json_doi_info_all.tab | awk 'BEGIN { FS="	" } ; { print $2 }'`

      if [ ! $PUBLICATION_DATE ]; then PUBLICATION_DATE=2023; fi

      PUBLISHED_BY=`grep ^$SPASE_RESOURCE_ID'	' datacite_json_doi_info_all.tab | awk 'BEGIN { FS="	" } ; { print $3 }'`

      echo '         <DOI>https://doi.org/10.48322/'$DOI'</DOI>' >> $COLLATION_FILE_NAME

   else

      DOI_STATUS=OLD

   fi

   echo '         <ReleaseDate>'$RELEASE_DATE'</ReleaseDate>' >> $COLLATION_FILE_NAME

   echo '         <RevisionHistory>' >> $COLLATION_FILE_NAME

   echo '            <RevisionEvent>' >> $COLLATION_FILE_NAME

   echo '               <ReleaseDate>'$RELEASE_DATE_PRIOR'</ReleaseDate>' >> $COLLATION_FILE_NAME

   echo '               <Note>Only known prior ReleaseDate of the metadata</Note>' >> $COLLATION_FILE_NAME

   echo '            </RevisionEvent>' >> $COLLATION_FILE_NAME

   echo '            <RevisionEvent>' >> $COLLATION_FILE_NAME

   echo '               <ReleaseDate>'$RELEASE_DATE'</ReleaseDate>' >> $COLLATION_FILE_NAME

   if [ $DOI_STATUS == 'OLD' ]; then REVISION_NOTE='Metadata versioned up to SPASE 2.6.0, reviewed by LFB 20230727'; fi

   echo '               <Note>'"$REVISION_NOTE"'</Note>' >> $COLLATION_FILE_NAME

   echo '            </RevisionEvent>' >> $COLLATION_FILE_NAME

   echo '         </RevisionHistory>' >> $COLLATION_FILE_NAME

   grep ^'\ \ \ \ \ \ \ \ \ <ExpirationDate>' $XML_FILE_NAME_TEMP >> $COLLATION_FILE_NAME

   grep ^'\ \ \ \ \ \ \ \ \ <Description>' $XML_FILE_NAME_TEMP | head -1 >> $COLLATION_FILE_NAME

   grep ^'\ \ \ \ \ \ \ \ \ <Acknowledgement>' $XML_FILE_NAME_TEMP | head -1 >> $COLLATION_FILE_NAME

   if [ $DOI_NUM -eq 0 ]; then

      echo '         <PublicationInfo>' >> $COLLATION_FILE_NAME

      echo '            <Authors>'$AUTHORS'</Authors>' >> $COLLATION_FILE_NAME

      echo '            <PublicationDate>'$PUBLICATION_DATE'-01-01T00:00:00</PublicationDate>' >> $COLLATION_FILE_NAME

      echo '            <PublishedBy>'$PUBLISHED_BY'</PublishedBy>' >> $COLLATION_FILE_NAME

      echo '         </PublicationInfo>' >> $COLLATION_FILE_NAME

   fi

   FUNDING_LINE_NUM=`grep -n ^'\ \ \ \ \ \ \ \ \ <Funding>'$ $XML_FILE_NAME_TEMP | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

   if [ $FUNDING_LINE_NUM ]; then

      TAIL_NUM=$((CONTACT_LINE_NUM_LAST-FUNDING_LINE_NUM+1))

      head -$CONTACT_LINE_NUM_LAST $XML_FILE_NAME_TEMP | tail -$TAIL_NUM >> $COLLATION_FILE_NAME

   else

      CONTACT_LINE_NUM_FIRST=`grep -n ^'\ \ \ \ \ \ \ \ \ <Contact>' $XML_FILE_NAME_TEMP | awk 'BEGIN { FS=":" } ; { print $1 }' | head -1`

      if [ $CONTACT_LINE_NUM_FIRST ]; then

         TAIL_NUM=$((CONTACT_LINE_NUM_LAST-CONTACT_LINE_NUM_FIRST+1))

         head -$CONTACT_LINE_NUM_LAST $XML_FILE_NAME_TEMP | tail -$TAIL_NUM >> $COLLATION_FILE_NAME

      fi

   fi

#  echo '         <Contact>' >> $COLLATION_FILE_NAME

#  echo '            <PersonID>spase://SMWG/Person/James.M.Weygand</PersonID>' >> $COLLATION_FILE_NAME

#  echo '            <Role>MetadataContact</Role>' >> $COLLATION_FILE_NAME

#  echo '         </Contact>' >> $COLLATION_FILE_NAME

   if [ $METADATA_CONTACT ]; then 

      METADATA_CONTACT_NUM=`grep -c ^'\ \ \ \ \ \ \ \ \ \ \ \ <PersonID>spase://SMWG/Person/'$METADATA_CONTACT'</PersonID>'$ $XML_FILE_NAME_TEMP`

      if [ $METADATA_CONTACT_NUM -eq 0 ]; then

         echo '         <Contact>' >> $COLLATION_FILE_NAME

         echo '            <PersonID>spase://SMWG/Person/'$METADATA_CONTACT'</PersonID>' >> $COLLATION_FILE_NAME

         echo '            <Role>MetadataContact</Role>' >> $COLLATION_FILE_NAME

         echo '         </Contact>' >> $COLLATION_FILE_NAME

      fi

   fi

   TAIL_NUM=$((XML_FILE_LINE_NUM-CONTACT_LINE_NUM_LAST))

   cat $XML_FILE_NAME_TEMP | tail -$TAIL_NUM >> $COLLATION_FILE_NAME

   rm $XML_FILE_NAME_TEMP

   if [ $SPASE_RESOURCE_ID_REVISED ]; then

      head -4 $COLLATION_FILE_NAME >& $XML_FILE_NAME_TEMP

      echo '      <ResourceID>spase://'$SPASE_RESOURCE_ID_REVISED'</ResourceID>' >> $XML_FILE_NAME_TEMP

      XML_FILE_LINE_NUM=`wc -l $COLLATION_FILE_NAME | awk '{ print $1 }'`

      LAST_RESOURCE_HEADER_LINE_NUM=`grep -n ^'\ \ \ \ \ \ </ResourceHeader>'$ $COLLATION_FILE_NAME | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

      HEAD_NUM=$((LAST_RESOURCE_HEADER_LINE_NUM-1))

      TAIL_NUM=$((LAST_RESOURCE_HEADER_LINE_NUM-6))

      head -$HEAD_NUM $COLLATION_FILE_NAME | tail -$TAIL_NUM >> $XML_FILE_NAME_TEMP

      echo '         <PriorID>'$SPASE_RESOURCE_ID_REVISED'</PriorID>'

      echo '         <PriorID>'$SPASE_RESOURCE_ID_REVISED'</PriorID>' >> $XML_FILE_NAME_TEMP

      TAIL_NUM=$((XML_FILE_LINE_NUM-LAST_RESOURCE_HEADER_LINE_NUM+1))

      cat $COLLATION_FILE_NAME | tail -$TAIL_NUM >> $XML_FILE_NAME_TEMP

      rm $COLLATION_FILE_NAME

      mv $XML_FILE_NAME_TEMP $COLLATION_FILE_NAME

   fi

else

   echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > $COLLATION_FILE_NAME

   echo '<Spase xmlns="http://www.spase-group.org/data/schema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.spase-group.org/data/schema http://www.spase-group.org/data/schema/spase-2_6_0.xsd">' >> $COLLATION_FILE_NAME

   echo '   <Version>2.6.0</Version>' >> $COLLATION_FILE_NAME

   echo '   <Person>' >> $COLLATION_FILE_NAME

   echo '      <ResourceID>spase://'$SPASE_RESOURCE_ID'</ResourceID>' >> $COLLATION_FILE_NAME

   echo '      <ReleaseDate>'$RELEASE_DATE'</ReleaseDate>' >> $COLLATION_FILE_NAME

   grep -v 'xml version' $XML_FILE_NAME | grep -v ^'<Spase\ ' | grep -v '<Version>' | grep -v '<Person>' | grep -v '<ResourceID>' | grep -v '<ReleaseDate>' >> $COLLATION_FILE_NAME

fi

printf "%s\n\nSPASE_EDITOR_PROCESS_UPDATE\t%s\t%s\n\n%s\n\n" $DASHES $XML_FILE_NAME $COLLATION_FILE_NAME $DASHES

diff $XML_FILE_NAME $COLLATION_FILE_NAME | sed 's/^/'$REVIEW_INITIALS'	/'

printf "\n%s\n\n" $DASHES

if [ $URL_CHECK == 'OUI' ]; then

   URL_LIST=`grep '<URL>' $COLLATION_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/&amp;/\&/g'`

   for URL in $URL_LIST

   do

       PROTOCOL=`echo $URL | awk 'BEGIN { FS=":" } ; { print $1 }' | tr 'a-z' 'A-Z'`

       CURL_CHECK=`curl_check.com $URL`

       STATUS=`echo "$CURL_CHECK" | awk 'BEGIN { FS="	" } ; { print $1 }'`

       CURL_STATUS=`echo "$CURL_CHECK" | awk 'BEGIN { FS="	" } ; { print $2 }'`

       printf "SPASE_EDITOR_URL_CHECK\t%s\t%s\t%s\t%s\t%s\t%s\n" $XML_FILE_NAME $COLLATION_FILE_NAME $STATUS "$CURL_STATUS" $PROTOCOL $URL

   done

else

   echo 'No URL checks performed !!!'

fi

printf "\n%s\n\n" $DASHES

SPASE_ID_LIST=`grep -hr 'ID>' $COLLATION_FILE_NAME | grep -v '<ResourceID>' | grep -v '<PriorID>' | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/spase:\/\///' | sort | uniq`

for SPASE_ID in $SPASE_ID_LIST

do

    REGISTRY=`echo $SPASE_ID | awk 'BEGIN { FS="/" } ; { print $1 }'`

    SPASE_RESOURCE_TYPE=`grep 'ID>spase://'$SPASE_ID'</' $COLLATION_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $2 }' | uniq`

    if [ -e $REGISTRY_DIRECTORY/$SPASE_ID.xml ]; then

       SPASE_ID_STATUS=OOO

    else

       SPASE_ID_STATUS=XXX

    fi

    printf "SPASE_EDITOR_ID_CHECK\t%s\t%s\t%s\t%s\t%s\t%s\n" $XML_FILE_NAME $COLLATION_FILE_NAME $SPASE_ID_STATUS $REGISTRY $SPASE_RESOURCE_TYPE $SPASE_ID

done

printf "\n%s\n\n" $DASHES

doi_check.com $COLLATION_FILE_NAME | sed 's/^/SPASE_EDITOR_/'

echo

VERSION_NUM=`grep ^'\ \ \ <Version>' $COLLATION_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/\./_/g'`

vxo_validation_check.com $VERSION_NUM $COLLATION_FILE_NAME

DATE=`date`

printf "\n%s\n\nStop Time:\t%s\n\n%s\n" $HASHES "$DATE" $HASHES

