
SPASE_RESOURCE_ID=$1

if [ $SPASE_RESOURCE_ID ]; then

if [ ! -d SMWG/Person ]; then mkdir -p SMWG/Person; fi

   if [ ! -e datacite_doi_name_list_all.tab ]; then printf "\t\t\t\t\t\t\t\t\t\nSPASE_PERSON_RESOURCE_ID\tFULL_NAME\tFIRST_NAME\tAUTHORS_GIVEN_NAME\tFAMILY_NAME\tINITIAL_NAME\tAFFILIATION_NAME\tAFFILIATION_ROR\tMISSION_ACRONYM\tNAME_PATTERN\n\t\t\t\t\t\t\t\t\t\n" >& datacite_doi_name_list_all.tab; fi

   PERSON_NUM=`grep -c ^$SPASE_RESOURCE_ID'	' datacite_doi_name_list_all.tab`

   if [ $PERSON_NUM == 0 ]; then

      SPASE_XML_FILE_NAME_RAW=`echo $SPASE_RESOURCE_ID | sed 's/\//\/master\//' | sed 's/$/\.xml/'`

      CURL_CHECK=`curl -kIsS https://raw.githubusercontent.com/hpde/$SPASE_XML_FILE_NAME_RAW | head -1 | awk '{ print $2 }'`

      if [ $CURL_CHECK -eq 200 ]; then

         SPASE_XML_FILE_NAME=$SPASE_RESOURCE_ID.xml

         curl -ksS https://raw.githubusercontent.com/hpde/$SPASE_XML_FILE_NAME_RAW >& $SPASE_XML_FILE_NAME

         spase_xml_tab_wrapper.com $SPASE_XML_FILE_NAME

         echo 'datacite_doi_name_list.com '$SPASE_RESOURCE_ID >> datacite_doi_name_list_all.com

         if [ ! -x datacite_doi_name_list_all.com ]; then chmod +x datacite_doi_name_list_all.com; fi

         datacite_doi_name_list.com $SPASE_RESOURCE_ID >> datacite_doi_name_list_all.tab

      else

         GIT=`awk 'BEGIN { FS="/" } ; { print $2 }' `

         echo 'WARNING: SPASE Resource Description does not exist under the HPDE '$GIT' Git Repository'

      fi

   fi

else

   printf "\n%s\n\n%s\n\n" 'Person Resource ID input variable is missing. Example Command Usage:' 'github_person.com SMWG/Person/Lee.Frost.Bargatze'

fi

