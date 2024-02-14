#!/bin/bash

echo "helo world"
mkdir -p $CASC_JENKINS_CONFIG/Tierey
cp $(pwd)/devops/jcasc/Tierey $CASC_JENKINS_CONFIG
ls -la $CASC_JENKINS_CONFIG/Tierey
echo "bye world"
