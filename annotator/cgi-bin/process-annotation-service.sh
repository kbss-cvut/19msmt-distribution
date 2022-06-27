#!/bin/bash

echo "Content-type: text/html"
echo ""
/usr/local/apache2/htdocs/brat/bin/process-annotations.sh
