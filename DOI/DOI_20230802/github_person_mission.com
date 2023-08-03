
SPASE_RESOURCE_ID=$1

if [ $SPASE_RESOURCE_ID ]; then

   SPASE_XML_FILE_NAME=$SPASE_RESOURCE_ID.xml

   GIT=`echo $SPASE_RESOURCE_ID | awk 'BEGIN { FS="/" } ; { print $1 }' `

   GIT_UPPER=`echo $GIT | tr 'a-z' 'A-Z'`

   GIT_LOWER=`echo $GIT | tr 'A-Z' 'a-z'`

   COM_FILE_NAME=person_mission_$GIT_LOWER'_all.com'

   TAB_FILE_NAME=person_mission_$GIT_LOWER'_all.tab'

   if [ ! -e $TAB_FILE_NAME ]; then printf "\nMISSION\tSPASE_RESOURCE_ID\tPERSON_SPASE_RESOURCE_ID\tROLE\n\n" >& $TAB_FILE_NAME; fi

   SPASE_RESOURCE_ID_NUM=`grep -c ^$SPASE_RESOURCE_ID'	' $TAB_FILE_NAME`

   if [ $SPASE_RESOURCE_ID_NUM == 0 ]; then

      if [ ! -e $SPASE_XML_FILE_NAME ]; then

         SPASE_XML_FILE_NAME_RAW=`echo $SPASE_RESOURCE_ID | sed 's/\//\/master\//' | sed 's/$/\.xml/'`

         CURL_CHECK=`curl -kIsS https://raw.githubusercontent.com/hpde/$SPASE_XML_FILE_NAME_RAW | head -1 | awk '{ print $2 }'`

         if [ $CURL_CHECK -eq 200 ]; then

            SPASE_XML_DIRECTORY=`dirname $SPASE_RESOURCE_ID`

            if [ ! -d $SPASE_XML_DIRECTORY ]; then mkdir -p $SPASE_XML_DIRECTORY; fi

            curl -ksS https://raw.githubusercontent.com/hpde/$SPASE_XML_FILE_NAME_RAW >& $SPASE_XML_FILE_NAME

            spase_xml_tab_wrapper.com $SPASE_XML_FILE_NAME

            echo 'person_mission.com '$SPASE_RESOURCE_ID >> $COM_FILE_NAME

            if [ ! -x $COM_FILE_NAME ]; then chmod +x $COM_FILE_NAME; fi

            person_mission.com $SPASE_RESOURCE_ID >> $TAB_FILE_NAME

         else

            echo 'WARNING: SPASE Resource Description does not exist under the HPDE '$GIT_UPPER' Git Repository'

         fi

      fi

   fi

else

   printf "\n%s\n\n%s\n\n" 'SPASE Resource ID input variable is missing. Example Command Usage:' 'github_person_mission.com NASA/NumericalData/LANL/1989/Ephemeris/PT3M'

fi

