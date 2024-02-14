#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
OWNER_NAME=$(git config --get remote.origin.url | sed 's/.*\/\([^ ]*\)\/[^.]*.*/\1/')
PROJECT_NAME=$(git config --get remote.origin.url | sed 's/.*\/[^ ]*\/\([^.]*\).*/\1/')
JCASC=$CASC_JENKINS_CONFIG/$OWNER_NAME/$PROJECT_NAME
echo "helo world from $SCRIPT_DIR"
mkdir -p $JCASC
shopt -s globstar dotglob
cp -rf $SCRIPT_DIR/jcasc/**/* $JCASC/
jcli reload-jcasc-configuration

echo "update-plugins"

UPDATE_LIST=$( jcli list-plugins | grep -e ')$' | awk '{ print $1 }' );
UPDATE_LIST=""; 
echo "plugins : $UPDATE_LIST"
if [ ! -z "${UPDATE_LIST}" ]; then 
    echo Updating Jenkins Plugins: ${UPDATE_LIST}; 
    jcli install-plugin ${UPDATE_LIST};
    jcli safe-restart;
fi
