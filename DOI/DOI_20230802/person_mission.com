
SPASE_RESOURCE_ID=$1

XML_FILE_NAME=$SPASE_RESOURCE_ID.xml

MISSION=`echo $SPASE_RESOURCE_ID | awk 'BEGIN { FS="/" } ; { print $3 }'`

MISSION_LOWER=`echo $MISSION | tr 'A-Z' 'a-z'`

MISSION_UPPER=`echo $MISSION | tr 'a-z' 'A-Z'`

HEAD_NUM_LIST=`grep -n '</Contact>' $XML_FILE_NAME | awk 'BEGIN { FS=":" } ; { print $1 }'`

for HEAD_NUM in $HEAD_NUM_LIST

do

    CONTACT_LINE_NUM=`head -$HEAD_NUM $XML_FILE_NAME | grep -n '<Contact>' | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

    TAIL_NUM=$((HEAD_NUM-CONTACT_LINE_NUM+1))

    head -$HEAD_NUM $XML_FILE_NAME | tail -$TAIL_NUM >& person_mission_$$.xml

    PERSON_ID=`grep -n '<PersonID>' person_mission_$$.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/^spase:\/\///'`

    ROLE_LIST=`grep -n '<Role>' person_mission_$$.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }'`

    for ROLE in $ROLE_LIST

    do

        echo $MISSION_UPPER'	'$SPASE_RESOURCE_ID'	'$PERSON_ID'	'$ROLE

    done

    smwg_person.com $PERSON_ID

    rm person_mission_$$.xml

done

