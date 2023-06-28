
DIRECTORY_SPASE=$1

DIRECTORY_JSON=$2

USER_PASS=$3

DATE=`date "+%Y%m%d"`

PROJECT=`echo $DIRECTORY_SPASE | awk 'BEGIN { FS="/" } ; { print $NF }'`

if [ ! -d $DIRECTORY_JSON ]; then mkdir -p $DIRECTORY_JSON; fi

PROJECT_LOWER=`echo $PROJECT | tr 'A-Z' 'a-z'`

DATACITE_CURL_FILE_NAME=$DIRECTORY_JSON/datacite_curl_put_$PROJECT_LOWER'_'$DATE.com

touch $DATACITE_CURL_FILE_NAME

chmod +x $DATACITE_CURL_FILE_NAME

DIRECTORY_OUTPUT=$DIRECTORY_JSON/JSON/$PROJECT

if [ ! -d $DIRECTORY_OUTPUT ]; then mkdir -p $DIRECTORY_OUTPUT; fi

#PASE_RESOURCE_ID_LIST=`grep -hr '<ResourceID>' $DIRECTORY_SPASE | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sort | sed 's/^spase:\/\///' | grep -v ^'NASA/NumericalData/RBSP/[AB]/EFW/L1/B2/PT0.00006S'$`

SPASE_RESOURCE_ID_LIST=`grep -hr '<ResourceID>' $DIRECTORY_SPASE | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sort | sed 's/^spase:\/\///'`

for SPASE_RESOURCE_ID in $SPASE_RESOURCE_ID_LIST

do

    XML_FILE_NAME=$SPASE_RESOURCE_ID.xml

    PRODUCT_KEY_UPPER=`grep '<ProductKey>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/@.*//' | sort | uniq | tr 'a-z' 'A-Z'`

    DOI=`grep '<DOI>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/@.*//' | sed 's/^https:\/\/doi.org\///' | sort | uniq | tr 'A-Z' 'a-z'`

    PREFIX=`echo $DOI | awk 'BEGIN { FS="/" } ; { print $1 }'`

    SUFFIX=`echo $DOI | awk 'BEGIN { FS="/" } ; { print $2 }'`

    if [ ! $PRODUCT_KEY_UPPER ]; then

       if [ $SPASE_RESOURCE_ID == 'NASA/NumericalData/RBSP/A/EMFISIS/HOUSEKEEPING/L2/PT1S' ]; then PRODUCT_KEY_UPPER='RBSP-A_HOUSEKEEPING_EMFISIS-L2'; fi

       if [ $SPASE_RESOURCE_ID == 'NASA/NumericalData/RBSP/B/EMFISIS/HOUSEKEEPING/L2/PT1S' ]; then PRODUCT_KEY_UPPER='RBSP-B_HOUSEKEEPING_EMFISIS-L2'; fi

       if [ $SPASE_RESOURCE_ID == 'NASA/NumericalData/RBSP/A/EMFISIS/WFR/L2/SPECTRAL-MATRIX-BURST/PT1S' ]; then PRODUCT_KEY_UPPER='RBSP-A_WFR-SPECTRAL-MATRIX-BURST_EMFISIS-L2'; fi

    fi

    PRODUCT_KEY_LOWER=`echo $PRODUCT_KEY_UPPER | tr 'A-Z' 'a-z'`

    JSON_FILE_NAME=$DIRECTORY_OUTPUT/datacite_json_doi_template_$PRODUCT_KEY_LOWER.json

    echo $DOI'	'$PREFIX'	'$SUFFIX'	'$PRODUCT_KEY_UPPER'	'$JSON_FILE_NAME'	'$SPASE_RESOURCE_ID

    if [ $PREFIX == '10.48322' ]; then

       URL_TEXT=''

    else

       URL_TEXT='test.'

    fi

    echo 'curl -sS --request PUT --url https://api.'$URL_TEXT'datacite.org/dois/'$PREFIX'%2F'$SUFFIX" --user '"$USER_PASS"' --header 'content-type: application/vnd.api+json' -d @"$JSON_FILE_NAME >> $DATACITE_CURL_FILE_NAME

    if [ -e $JSON_FILE_NAME ]; then rm $JSON_FILE_NAME; fi

    echo '{' >& $JSON_FILE_NAME

    echo '  "data": {' >> $JSON_FILE_NAME

    echo '    "type": "dois",' >> $JSON_FILE_NAME

    echo '    "attributes": {' >> $JSON_FILE_NAME

    echo '      "doi": "'$DOI'",' >> $JSON_FILE_NAME

    echo '      "prefix": "10.48322",' >> $JSON_FILE_NAME

    echo '      "suffix": "'$SUFFIX'",' >> $JSON_FILE_NAME

    echo '      "url": "https://hpde.io/'$SPASE_RESOURCE_ID'.html",' >> $JSON_FILE_NAME

    echo '      "types": {' >> $JSON_FILE_NAME

    echo '        "ris": "DATA",' >> $JSON_FILE_NAME

    echo '        "bibtex": "misc",' >> $JSON_FILE_NAME

    echo '        "citeproc": "dataset",' >> $JSON_FILE_NAME

    echo '        "schemaOrg": "Dataset",' >> $JSON_FILE_NAME

    echo '        "resourceTypeGeneral": "Dataset"' >> $JSON_FILE_NAME

    echo '      },' >> $JSON_FILE_NAME

    echo '      "creators": [' >> $JSON_FILE_NAME

    SPASE_PERSON_NAME_LIST=`grep '<PersonID>' $XML_FILE_NAME | grep -v Lee.Frost.Bargatze | grep -v Robert.E.McGuire | grep -v Robert.M.Candey | grep -v MMS_SDC_POC | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/^spase:\/\/SMWG\/Person\///'`

    SPASE_PERSON_NAME_LAST=`grep '<PersonID>' $XML_FILE_NAME | grep -v Lee.Frost.Bargatze | grep -v Robert.E.McGuire | grep -v Robert.M.Candey | grep -v MMS_SDC_POC | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/^spase:\/\/SMWG\/Person\///' | tail -1`

    for SPASE_PERSON_NAME in $SPASE_PERSON_NAME_LIST

    do

        SPASE_PERSON_NAME_MATCH=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $1 }'`

        if [ $SPASE_PERSON_NAME_MATCH ]; then

           GIVEN_NAME=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $2 }'`

           AUTHORS_GIVEN_NAME=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $3 }'`

           FAMILY_NAME=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $4 }'`

           INITIAL_NAME=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $5 }'`

           AFFILIATION_NAME=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $6 }'`

           AFFILIATION_ROR=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $7 }'`

           MISSION_ACRONYM=`grep ^$SPASE_PERSON_NAME'	' datacite_json_doi_template.tab | awk 'BEGIN { FS="	" } ; { print $8 }'`

        else

           GIVEN_NAME=GIVEN_NAME

           FAMILY_NAME=FAMILY_NAME

        fi

        echo '        {' >> $JSON_FILE_NAME

        echo '          "name": "'$FAMILY_NAME', '"$GIVEN_NAME"'",' >> $JSON_FILE_NAME

        echo '          "nameType": "Personal",' >> $JSON_FILE_NAME

        echo '          "givenName": "'"$GIVEN_NAME"'",' >> $JSON_FILE_NAME

        echo '          "familyName": "'$FAMILY_NAME'",' >> $JSON_FILE_NAME

        echo '          "affiliation": [' >> $JSON_FILE_NAME

        echo '            {' >> $JSON_FILE_NAME

        if [ $AFFILIATION_ROR ]; then

           echo '              "name": "'"$AFFILIATION_NAME"'",' >> $JSON_FILE_NAME

           echo '              "schemeUri": "https://ror.org",' >> $JSON_FILE_NAME

           echo '              "affiliationIdentifier": "https://ror.org/'$AFFILIATION_ROR'",' >> $JSON_FILE_NAME

           echo '              "affiliationIdentifierScheme": "ROR"' >> $JSON_FILE_NAME

        else

           echo '              "name": "'"$AFFILIATION_NAME"'"' >> $JSON_FILE_NAME

        fi

        echo '            }' >> $JSON_FILE_NAME

        echo '          ],' >> $JSON_FILE_NAME

        echo '          "nameIdentifiers": []' >> $JSON_FILE_NAME

        if [ $SPASE_PERSON_NAME != $SPASE_PERSON_NAME_LAST ]; then

           echo '        },' >> $JSON_FILE_NAME

        else

           echo '        }' >> $JSON_FILE_NAME

        fi

    done

    echo '      ],' >> $JSON_FILE_NAME

    TITLE=`grep -r '<ResourceName>' $XML_FILE_NAME | sort | awk 'BEGIN { FS="[<>]" } ; { print $3 }'`

    echo '      "titles": [' >> $JSON_FILE_NAME

    echo '        {' >> $JSON_FILE_NAME

    echo '          "lang": "en",' >> $JSON_FILE_NAME

    echo '          "title": "'"$TITLE"'",' >> $JSON_FILE_NAME

    echo '          "titleType": null' >> $JSON_FILE_NAME

    echo '        }' >> $JSON_FILE_NAME

    echo '      ],' >> $JSON_FILE_NAME

    PUBLISHER='NASA Space Physics Data Facility'

    echo '      "publisher": "'"$PUBLISHER"'",' >> $JSON_FILE_NAME

    PROCESSING_LEVEL=`grep '<ProcessingLevel>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }'`

    echo '      "subjects": [' >> $JSON_FILE_NAME

    echo '        {' >> $JSON_FILE_NAME

    echo '          "subject": "'$PROCESSING_LEVEL'"' >> $JSON_FILE_NAME

    echo '        },' >> $JSON_FILE_NAME

    MEASUREMENT_TYPE_LIST=`grep '<MeasurementType>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sort | uniq`

    MEASUREMENT_TYPE_LAST=`grep '<MeasurementType>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sort | tail -1`

    for MEASUREMENT_TYPE in $MEASUREMENT_TYPE_LIST

    do

        echo '        {' >> $JSON_FILE_NAME

        echo '          "subject": "'$MEASUREMENT_TYPE'"' >> $JSON_FILE_NAME

        if [ $MEASUREMENT_TYPE != $MEASUREMENT_TYPE_LAST ]; then

           echo '        },' >> $JSON_FILE_NAME

        else

           echo '        }' >> $JSON_FILE_NAME

        fi

    done

    echo '      ],' >> $JSON_FILE_NAME

    echo '      "contributors": [],' >> $JSON_FILE_NAME

    echo '      "dates": [],' >> $JSON_FILE_NAME

    PUBLICATION_YEAR=2022

    echo '      "publicationYear": '$PUBLICATION_YEAR',' >> $JSON_FILE_NAME

    echo '      "language": "en",' >> $JSON_FILE_NAME

    echo '      "identifiers": [' >> $JSON_FILE_NAME

    echo '        {' >> $JSON_FILE_NAME

    echo '          "identifier": "spase://'$SPASE_RESOURCE_ID'",' >> $JSON_FILE_NAME

    echo '          "identifierType": "SPASE"' >> $JSON_FILE_NAME

    echo '        }' >> $JSON_FILE_NAME

    echo '      ],' >> $JSON_FILE_NAME

    echo '      "sizes": [],' >> $JSON_FILE_NAME

    FORMAT_LIST=`grep '<Format>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sort | uniq`

    FORMAT_LAST=`grep '<Format>' $XML_FILE_NAME | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sort | tail -1`

    echo '      "formats": [' >> $JSON_FILE_NAME

    for FORMAT in $FORMAT_LIST

    do

        echo '        {' >> $JSON_FILE_NAME

        echo '          "subject": "'$FORMAT'"' >> $JSON_FILE_NAME

        if [ $FORMAT != $FORMAT_LAST ]; then

           echo '        },' >> $JSON_FILE_NAME

        else

           echo '        }' >> $JSON_FILE_NAME

        fi

    done

    echo '      ],' >> $JSON_FILE_NAME

    echo '      "rightsList": [' >> $JSON_FILE_NAME

    echo '        {' >> $JSON_FILE_NAME

    echo '          "rights": "Creative Commons Zero v1.0 Universal",' >> $JSON_FILE_NAME

    echo '          "rightsUri": "https://creativecommons.org/publicdomain/zero/1.0/legalcode",' >> $JSON_FILE_NAME

    echo '          "schemeUri": "https://spdx.org/licenses/",' >> $JSON_FILE_NAME

    echo '          "rightsIdentifier": "cc0-1.0",' >> $JSON_FILE_NAME

    echo '          "rightsIdentifierScheme": "SPDX"' >> $JSON_FILE_NAME

    echo '        }' >> $JSON_FILE_NAME

    echo '      ],' >> $JSON_FILE_NAME

    DESCRIPTION=`grep '<Description>' $XML_FILE_NAME | head -1 | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/"/\&quot;/g'`

    echo '      "descriptions": [' >> $JSON_FILE_NAME

    echo '        {' >> $JSON_FILE_NAME

    echo '          "lang": "en",' >> $JSON_FILE_NAME

    echo '          "description": "'"$DESCRIPTION"'",' >> $JSON_FILE_NAME

    echo '          "descriptionType": "Abstract"' >> $JSON_FILE_NAME

    echo '        }' >> $JSON_FILE_NAME

    echo '      ],' >> $JSON_FILE_NAME

    echo '      "geoLocations": [],' >> $JSON_FILE_NAME

    echo '      "fundingReferences": [],' >> $JSON_FILE_NAME

    echo '      "relatedIdentifiers": [],' >> $JSON_FILE_NAME

    echo '      "schemaVersion": "http://datacite.org/schema/kernel-4",' >> $JSON_FILE_NAME

    echo '      "providerId": "nasasmd",' >> $JSON_FILE_NAME

    echo '      "clientId": "heliophy.spdf",' >> $JSON_FILE_NAME

    echo '      "agency": "datacite",' >> $JSON_FILE_NAME

    echo '      "state": "draft"' >> $JSON_FILE_NAME

    echo '    }' >> $JSON_FILE_NAME

    echo '  }' >> $JSON_FILE_NAME

    echo '}' >> $JSON_FILE_NAME

done

