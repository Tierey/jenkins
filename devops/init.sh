#!/bin/bash

ls -la

echo "helo world"
mkdir -p $CASC_JENKINS_CONFIG/Tierey
cp "$(pwd)/jcasc/Tierey" $CASC_JENKINS_CONFIG/
ls -la $CASC_JENKINS_CONFIG
