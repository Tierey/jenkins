#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo "helo world from $SCRIPT_DIR"
mkdir -p $CASC_JENKINS_CONFIG/Tierey
cp -rf $(pwd)/devops/jcasc/Tierey $CASC_JENKINS_CONFIG
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
