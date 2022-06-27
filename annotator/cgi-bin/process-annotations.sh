#!/bin/bash

if [ $# -eq 0 ]
  then
    WORKSPACE=/opt/java-libs/
  else
	WORKSPACE=$1
fi


function print_usage() {
          echo "Process brat annotations to create appropriate gate and ontology files. Result is pushed to annotations git repository."
          echo "Usage: "
          echo -e "\t$0 <GATE_TOOLS_DIR>"
          echo "Examples: "
          echo -e "\t$0 /gate-tools"
}

if [ ! "$#" -eq 1 ]; then
        print_usage
        exit
fi


#PROJECT_DIR=/opt/projects/19msmt
BRAT_DATA_HOME=/brat-data
ANNOTATIONS_DIR=$BRAT_DATA_HOME

cd $ANNOTATIONS_DIR
git pull

GATE_TOOLS=$WORKSPACE/gate-tools.sh

ls -1 */*/*.txt | while read TEXT_FILE; do

        ANN_FILE=${TEXT_FILE:0:-4}.ann

        if [ ! -s $ANN_FILE ]; then
                echo INFO: Skipping file $TEXT_FILE as there were no annotations found in $ANN_FILE.
                continue;
        fi

        echo INFO: Processing $TEXT_FILE ...
        $GATE_TOOLS brat2gate --input-text-file $TEXT_FILE --brat-server-url https://kbss.felk.cvut.cz/19msmt-demo/anotator --brat-data-home-directory $BRAT_DATA_HOME
done
 
# give rights for brat web tool
find * -name '[^.]*' -exec chown developer:www-data {} \;
find * -name '[^.]*' -exec chmod g+w {} \;

git add .
test -z "$(git status --porcelain)" || git commit -m '[Upd] Automatic update of annotations'
git push


exit
# give rights for brat web tool
#       function provide_rights() {
#               chmod g+w */*/*ann
#               chown developer:www-data */*/*ann
#               find * -type d -name '[^.]*' -exec chown developer:www-data {} \;
#               find * -type d -name '[^.]*' -exec chmod g+w {} \;
#               chmod g+w .
#               chown developer:www-data .
#       }
