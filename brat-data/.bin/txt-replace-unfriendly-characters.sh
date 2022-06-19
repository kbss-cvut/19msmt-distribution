#!/bin/bash

if [ "$#" -eq 0 ]; then
        echo Removes all relations annotations wihin specified TXT_FILEs.
        echo Usage :  $0 TXT_FILE...
        echo Example:
        echo "  $0 test1.txt test2.txt"
        exit
fi

ls $* | while read FILE; do	
	echo INFO: Processing file $FILE ..
        sed -i 's/[^[:print:]]//' $FILE
        sed -i 's/\. \. /___/g' $FILE 
        sed -i 's/__\./___/g'  $FILE
        sed -i 's/ $//g' $FILE
done
