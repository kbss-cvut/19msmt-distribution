#!/bin/bash


if [ ! "$#" -eq 1 ]; then
        echo Convert annotated document specified by INPUT_DOCUMENT_IRI.
        echo Usage :  $0 "INPUT_DOCUMENT_IRI" 
        echo Example:
        echo "  $0 http://onto.fel.cvut.cz/ontologies/fmea/19msmt/BlueSky/DA42-POH--has-component/DA42-POH-41"
        exit
fi


FUNCTION_ID=convert-document
INPUT_DOCUMENT_IRI=$1
#INPUT_DOCUMENT_IRI=http://onto.fel.cvut.cz/ontologies/fmea/19msmt/BlueSky/DA42-POH--has-component/DA42-POH-41

DIR="$(dirname $(realpath -s $0))"

# SPIPES_SERVICE=http://localhost:8090/fta-fmea-converter
. $DIR/set-env.sh

OUTPUT_FILE=./target/output.ttl.txt

echo "==================================="
echo "INFO: s-pipes service url $SPIPES_SERVICE"
echo "INFO: function id $FUNCTION_ID"
echo "INFO: document iri $INPUT_DOCUMENT_IRI"
echo "==================================="

mkdir -p ./target

URL="$SPIPES_SERVICE/service?_pId=$FUNCTION_ID&documentIri=$INPUT_DOCUMENT_IRI"

set -x

curl --location --request GET \
        --header 'Accept: text/turtle' \
        "$URL" > $OUTPUT_FILE

set +x
