#!/bin/bash

echo "helo world"
mkdir -p $CASC_JENKINS_CONFIG/Tierey
cp -rf $(pwd)/devops/jcasc/Tierey $CASC_JENKINS_CONFIG
jcli reload-jcasc-configuration

ls -la $CASC_JENKINS_CONFIG/Tierey
echo "bye world"
