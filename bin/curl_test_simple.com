
URL=$1

CURL_STATUS=`curl -kIsS "$URL" | sed 's/

printf "CURL_TEST\t%s\t%s\n" "$CURL_STATUS" "$URL"
