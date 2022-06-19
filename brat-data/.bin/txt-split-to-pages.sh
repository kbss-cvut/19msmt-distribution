#!/bin/bash

DOCUMENT=$1
PAGE_SIZE=10


DOCUMENT_NAME=${DOCUMENT:0:-4}

PART=1
PAGE=0
PART_NUM=$(printf "%03d" $PART)
FILE=$DOCUMENT_NAME-$PART_NUM.txt
touch $DOCUMENT_NAME-$PART_NUM.ann

cat $DOCUMENT | while read LINE; do	
	echo "$LINE" | grep  '\-\-\- Page [0-9]*\-\-\-' && (( PAGE++ )) 
	if [ $PAGE = $PAGE_SIZE ]; then
		PAGE=0;
		(( PART++ ))
		PART_NUM=$(printf "%03d" $PART)
		FILE=$DOCUMENT_NAME-$PART_NUM.txt
		touch $DOCUMENT_NAME-$PART_NUM.ann
		rm -f $FILE
	fi
	echo "$LINE" | sed 's/[^[:print:]]//' | sed 's/\. \. /___/g' | sed 's/__\./___/g'  >> $FILE
done
