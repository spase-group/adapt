
SPASE_RESOURCE_ID=$1

XML_FILE_NAME=$SPASE_RESOURCE_ID.xml

HEAD_NUM_LIST=`grep -n '</Contact>' $XML_FILE_NAME | awk 'BEGIN { FS=":" } ; { print $1 }'`

MISSION=`echo $SPASE_RESOURCE_ID | awk 'BEGIN { FS="/" } ; { print $3 }'`

for HEAD_NUM in $HEAD_NUM_LIST

do

    CONTACT_LINE_NUM=`head -$HEAD_NUM $XML_FILE_NAME | grep -n '<Contact>' | tail -1 | awk 'BEGIN { FS=":" } ; { print $1 }'`

    TAIL_NUM=$((HEAD_NUM-CONTACT_LINE_NUM+1))

    head -$HEAD_NUM $XML_FILE_NAME | tail -$TAIL_NUM >& person_mission_$$.xml

    PERSON_ID=`grep -n '<PersonID>' person_mission_$$.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/^spase:\/\///'`

    ROLE_LIST=`grep -n '<Role>' person_mission_$$.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }'`

    for ROLE in $ROLE_LIST

    do

        echo $MISSION'	'$SPASE_RESOURCE_ID'	'$PERSON_ID'	'$ROLE

    done

    rm person_mission_$$.xml

done

