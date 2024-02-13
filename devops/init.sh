#!/bin/bash

ls -la

echo "helo world"
cp "$(pwd)/jcasc/Tierey" $CASC_JENKINS_CONFIG/
ls -la $CASC_JENKINS_CONFIG
