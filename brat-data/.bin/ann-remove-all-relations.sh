#!/bin/bash

if [ "$#" -eq 0 ]; then
        echo Removes all relations annotations wihin specified ANN_FILEs.
        echo Usage :  $0 ANN_FILE...
        echo Example:
        echo "  $0 test1.ann test2.ann"
        exit
fi

sed -i -n '/^[^R]/p' $*
