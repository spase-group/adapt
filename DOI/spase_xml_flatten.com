
FILE_NAME=$1

RANDOM_NUMBER=$RANDOM

grep -v "<\!\-\-.*\-\->" $FILE_NAME | sed 's/><\//>|<\//g' | sed 's/	/ /g' | sed 's/

mv spase_xml_flatten_$RANDOM_NUMBER"_"$$.xml $FILE_NAME
