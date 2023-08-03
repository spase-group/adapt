
DOI=$1

PROJECT=$2

HASHES=$(printf "%0.s#" $(seq 1 275))

DASHES='+'$(printf "%0.s-" $(seq 1 273))'+'

DIRECTORY_JSON=DATACITE/JSON/$PROJECT

DIRECTORY_XML=DATACITE/XML/$PROJECT

if [ ! -d $DIRECTORY_JSON ]; then mkdir -p $DIRECTORY_JSON; fi

if [ ! -d $DIRECTORY_XML ]; then mkdir -p $DIRECTORY_XML; fi

JSON_FILE_NAME=$DIRECTORY_JSON/datacite_json_doi_info_$DOI.json

XML_FILE_NAME=$DIRECTORY_XML/datacite_json_doi_info_$DOI.xml

curl -kSs https://api.datacite.org/dois/application/vnd.datacite.datacite+json/$DOI >& $JSON_FILE_NAME

curl -kSs https://api.datacite.org/dois/application/vnd.datacite.datacite+xml/$DOI >& $XML_FILE_NAME

JSON_FILE_LINE_NUM=`wc -l $JSON_FILE_NAME | awk '{ print $1 }'`

CREATOR_LINE_NUM=`grep -n ^'\ \ "creators":\ \['$ $JSON_FILE_NAME | awk 'BEGIN { FS=":" } ; { print $1 }'`

TAIL_NUM=$(($JSON_FILE_LINE_NUM-$CREATOR_LINE_NUM+2))

TAIL_NUM=`tail -$TAIL_NUM $JSON_FILE_NAME | grep -n ^'\ \ \],'$ | head -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

HEAD_NUM=$((CREATOR_LINE_NUM+TAIL_NUM-1))

TEMP_FILE_NAME=WORK/datacite_json_doi_info_$$.json

head -$HEAD_NUM $JSON_FILE_NAME | tail -$TAIL_NUM >& $TEMP_FILE_NAME

AUTHORS_FILE_NAME=DATACITE/datacite_json_doi_info_all_authors.tab

HEAD_NUM_LIST=`grep -n ^'\ \ \ \ },*'$ $TEMP_FILE_NAME | awk 'BEGIN { FS=":" } ; { print $1 }'`

HEAD_NUM_LAST=`grep -n ^'\ \ \ \ },*'$ $TEMP_FILE_NAME | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

HEAD_NUM_LIST_NUM=`grep -n ^'\ \ \ \ },*'$ $TEMP_FILE_NAME | awk 'BEGIN { FS=":" } ; { print $1 }' | wc -l | awk '{ print $1 }'`

AUTHORS=''

for HEAD_NUM in $HEAD_NUM_LIST

do

    BRACKET_LINE_NUM=`head -$HEAD_NUM $TEMP_FILE_NAME | grep -n ^'\ \ \ \ {'$ | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

    TAIL_NUM=$((HEAD_NUM-BRACKET_LINE_NUM+1))

    FAMILY_NAME=`head -$HEAD_NUM $TEMP_FILE_NAME | tail -$TAIL_NUM | grep ^'\ \ \ \ \ \ "familyName":\ "' | awk 'BEGIN { FS="\"" } ; { print $(NF-1) }'`

    GIVEN_NAME=`head -$HEAD_NUM $TEMP_FILE_NAME | tail -$TAIL_NUM | grep ^'\ \ \ \ \ \ "givenName":\ "' | awk 'BEGIN { FS="\"" } ; { print $(NF-1) }'`

    if [ "$FAMILY_NAME$GIVEN_NAME" ]; then

       GIVEN_NAME_INITIALS=`echo $GIVEN_NAME | sed 's/[a-z][a-z]*\ /\./g' | sed 's/[a-z][a-z]*$/\./' | sed 's/\.\ /\./'`

       echo $DOI'	'$FAMILY_NAME'	'$GIVEN_NAME >> $AUTHORS_FILE_NAME

       if [ $HEAD_NUM -ne $HEAD_NUM_LAST ]; then

          if [ $HEAD_NUM_LIST_NUM -ge 2 ]; then

             AUTHORS=$AUTHORS$FAMILY_NAME', '$GIVEN_NAME_INITIALS', '

          else

             AUTHORS=$AUTHORS$FAMILY_NAME', '$GIVEN_NAME_INITIALS' '

          fi

       else

          AUTHORS=$AUTHORS'and '$GIVEN_NAME_INITIALS' '$FAMILY_NAME

       fi

    else

       NAME=`head -$HEAD_NUM $TEMP_FILE_NAME | tail -$TAIL_NUM | grep ^'\ \ \ \ \ \ "name":\ "' | awk 'BEGIN { FS="\"" } ; { print $(NF-1) }'`

       echo $DOI'	'$NAME  >> $AUTHORS_FILE_NAME

       if [ $HEAD_NUM -ne $HEAD_NUM_LAST ]; then

          if [ $HEAD_NUM_LIST_NUM -ge 2 ]; then

             AUTHORS=$AUTHORS$NAME', '

          else

             AUTHORS=$AUTHORS$NAME' '

          fi

       else

          AUTHORS=$AUTHORS'and '$NAME

       fi

    fi

done

rm $TEMP_FILE_NAME

SPASE_RESOURCE_ID=`grep ^'  "url": "https://hpde.io/' $JSON_FILE_NAME | awk 'BEGIN { FS="\"" } ; { print $(NF-1) }' | sed 's/^https:\/\/hpde.io\///' | sed 's/\.html$//'`

PUBLISHED_BY=`grep ^'  "publisher": "' $JSON_FILE_NAME | awk 'BEGIN { FS="\"" } ; { print $(NF-1) }'`

PUBLICATION_DATE=`grep ^'\ \ "publicationYear":\ ' $JSON_FILE_NAME | awk 'BEGIN { FS="[ ,]" } ; { print $(NF-1) }'`

SPASE_XML_FILE_NAME=$SPASE_RESOURCE_ID.xml

DOI_XML=`grep '<DOI>' $SPASE_XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/^https:\/\/doi.org\/10.48322\///'`

if [ $DOI_XML ]; then

   if [ $DOI == $DOI_XML ]; then

      STATUS=OOO

   else

      STATUS=NON

   fi

else

   DOI_XML=XXXX-XXXX

   STATUS=XXX

fi

printf "%s\t%s\t%s\t%s\t%s\t%s\t%s\n" $STATUS $DOI $DOI_XML $PUBLICATION_DATE "$PUBLISHED_BY" $SPASE_RESOURCE_ID "$AUTHORS"

