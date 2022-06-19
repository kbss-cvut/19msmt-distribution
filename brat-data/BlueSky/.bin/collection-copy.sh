#!/bin/bash

if [ ! "$#" -eq 2 ]; then
        echo Copy configuration of rdf4j SRC_REPOSITORY to DST_REPOSITORY for specified REPOSITORY_SET. 
        echo Usage :  $0 "REPOSITORY_SET" "SRC_REPOSITORY" "DST_REPOSITORY" 
        echo Example:
        echo "  $0 http://localhost:18080/openrdf-rdf4j ontomind_owlim ontomind_owlim_201301223"
        exit
fi



