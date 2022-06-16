#!/bin/bash

if [ ! "$#" -eq 0 ]; then
        echo List all annotated documents.
        echo Usage :  $0 
        echo Example:
        echo "  $0"
        exit
fi


FUNCTION_ID=list-documents

DIR="$(dirname $(realpath -s $0))"

# SPIPES_SERVICE=http://localhost:8090/fta-fmea-converter
. $DIR/set-env.sh

OUTPUT_FILE=./target/output.ttl.txt

echo "==================================="
echo "INFO: s-pipes service url $SPIPES_SERVICE"
echo "INFO: function id $FUNCTION_ID"
echo "==================================="

mkdir -p ./target

URL="$SPIPES_SERVICE/service?_pId=$FUNCTION_ID"

set -x

curl --location --request GET \
        --header 'Accept: text/turtle' \
        "$URL" > $OUTPUT_FILE

set +x
