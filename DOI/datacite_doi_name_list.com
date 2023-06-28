
SPASE_PERSON_RESOURCE_ID=$1

PERSON_NAME=`grep '<PersonName>' $SPASE_PERSON_RESOURCE_ID.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }' | sed 's/[DM][rs]\.\ //' | sed 's/^Dr\ //' | sed 's/^Mrs\.\ //' | sed 's/^Prof\.\ //' | sed 's/^Sir\ //' | sed 's/^Ing\.\ //' | sed 's/^Comodero\ //' | sed 's/^Capt\ //' | sed 's/^Col\ //' | sed 's/^Lcdr\ //' | sed 's/^Lcol\ //' | sed 's/1\/Lt\ //' | sed 's/^Lt\ //' | sed 's/^Maj\ //' | sed 's/,\ USAF$//' | sed 's/,\ M\.D\.$//' | sed 's/\./\.\ /g' | sed 's/\ \ /\ /g' | sed 's/\.\ -/\.-/' | sed 's/,\ Jr\./,|Jr./' | sed 's/,\ Sr\./,|Sr./' | sed 's/,\ II$/,|II/' | sed 's/,\ III$/,|III/' | sed 's/,\ IV$/,|IV/' # grep -v ^'Director\ ' | grep -v ^'DMSP Data Manager'$ | grep -v ^'MMS Science Data Center Mission Development Team Point of Contact'$ | grep -v ^'NOAA National Environmental Satellite'$ | grep -v ^'TGO Editor'$ | grep -v ^'The AE Project Team'$ | grep -v ^'UNKNOWN'$ | sed 's/\ do\ Espirito\ Santo/\ do|Espirito|Santo/' | sed 's/\ De\ La\ /\ De|La|/' | sed 's/\ Van\ Den\ /\ Van|Den|/' | sed 's/\ Van\ der\ /\ Van|der|/' | sed 's/\ De\ /\ De|/' | sed 's/\ Del\ /\ Del|/' | sed 's/\ Di\ /\ Di|/' | sed 's/\ St.\ /\ St.|/' | sed 's/\ Van\ /\ Van|/' | sed 's/\ Von\ /\ Von|/' | sed 's/\ Vonder\ /\ Vonder|/' | sed 's/\ de\ /\ de|/'`

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_N; fi

if [ `echo $PERSON_NAME | grep ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$ | grep -cv ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Z][a-z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_N_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_N_N_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;ß-]*\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_I_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;ß-]*\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_I_N_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;ß-]*\ [A-Z]\.\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_I_I_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z][a-z]\.\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=IR_I_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z]\.\ [A-Z][a-z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_IR_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Z][a-z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=N_IR_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_N; fi

if [ `echo $PERSON_NAME | grep ^'[A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$ | grep -cv ^'[A-Z]\.\ [A-Z][a-z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_N_N; fi

if [ `echo $PERSON_NAME | grep ^'[A-Z]\.\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$ | grep -cv ^'[A-Z]\.\ [A-Z][a-z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_I_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z]\.\ [A-Z]\.\ [A-z][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_I_N_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z]\.\ [A-Z]\.\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_I_I_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z]\.\ [A-Z]\.\ [A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;.ß-]*\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=I_I_I_N_N; fi

if [ `echo $PERSON_NAME | grep -c ^'[A-Z]\.-[A-Z]\.\ [A-Zd][A-z0-9#&|;ß-][A-z0-9#&|;,.ß-]*'$` -eq 1 ]; then NAME_PATTERN=II_N; fi

if [ ! $NAME_PATTERN ]; then NAME_PATTERN=OTHER; fi

GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1 }'`

FAMILY_NAME=`echo $PERSON_NAME | awk '{ print $NF }' | sed 's/|/\ /g'`

AFFILIATION_NAME=`grep '<OrganizationName>' $SPASE_PERSON_RESOURCE_ID.xml | awk 'BEGIN { FS="[<>]" } ; { print $3 }'`

AFFILIATION_ROR='ZZZ'

MISSION=`grep '	'$SPASE_PERSON_RESOURCE_ID'	' person_mission_nasa_all.tab | awk 'BEGIN { FS="	" } ; { print $1 }' | sort | uniq`

case $NAME_PATTERN in

     N) GIVEN_NAME=''

        AUTHORS_GIVEN_NAME=''

        INITIAL_NAME=$PERSON_NAME;;

     N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1 }'`

          INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($1,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     N_N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

            INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($1,1,1)"."substr($2,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     N_N_N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2" "$3 }'`

              INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($1,1,1)"."substr($2,1,1)"."substr($3,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     N_I_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

            INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($0,1,1)"."$2" "$3 }' | sed 's/|/\ /g'`;;

     N_I_N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2" "$3 }'`

              INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($1,1,1)"."$2substr($3,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     N_I_I_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2" "$3 }'`

              INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($1,1,1)"."$2$3" "$NF }' | sed 's/|/\ /g'`;;

     IR_I_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

             INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1$2" "$NF }' | sed 's/|/\ /g'`;;

     I_IR_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

             INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1$2" "$NF }' | sed 's/|/\ /g'`;;

     N_IR_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

             INITIAL_NAME=`echo $PERSON_NAME | awk '{ print substr($1,1,1)"."$2" "$NF }' | sed 's/|/\ /g'`;;

     I_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1 }'`

          INITIAL_NAME=`echo $PERSON_NAME | sed 's/|/\ /g'`;;

     I_N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

            INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1substr($2,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     I_I_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2 }'`

            INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1$2" "$NF }' | sed 's/|/\ /g'`;;

     I_I_N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2" "$3 }'`

              INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1$2substr($3,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     I_I_I_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2" "$3 }'`

              INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1$2$3" "$NF }' | sed 's/|/\ /g'`;;

     I_I_I_N_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1", "$2" "$3 $4 }'`

                INITIAL_NAME=`echo $PERSON_NAME | awk '{ print $1$2$3substr($4,1,1)". "$NF }' | sed 's/|/\ /g'`;;

     II_N) AUTHORS_GIVEN_NAME=`echo $PERSON_NAME | awk '{ print $1 }'`

           INITIAL_NAME=`echo $PERSON_NAME | sed 's/|/\ /g'`;;

     OTHER) AUTHORS_GIVEN_NAME=''

            INITIAL_NAME=$PERSON_NAME;;

esac

PERSON_NAME=`echo $PERSON_NAME | sed 's/|/\ /g'`

echo $SPASE_PERSON_RESOURCE_ID'	'$PERSON_NAME'	'$GIVEN_NAME'	'$AUTHORS_GIVEN_NAME'	'$FAMILY_NAME'	'$INITIAL_NAME'	'$AFFILIATION_NAME'	'$AFFILIATION_ROR'	'$MISSION'	'$NAME_PATTERN

