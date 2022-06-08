#!/bin/bash

#INPUT_DOCUMENT_NAME=

if [ ! "$#" -eq 0 ]; then
        echo Convert annotated document specified by INPUT_DOCUMENT_NAME.
        echo Usage :  $0 "INPUT_DOCUMENT_NAME" 
        echo Example:
        echo "  $0 DA42-POH"
        exit
fi


FUNCTION_ID=convert-document
SPIPES_SERVICE=http://localhost:8080/s-pipes

DIR="$(dirname $(realpath -s $0))"

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
