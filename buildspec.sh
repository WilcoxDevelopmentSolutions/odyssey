#!/bin/sh

# The philosophy with build systems should be "lowest common denominator", as one CI system wins favor over another CI system
# As such we have very generic build phasey scripts in build-scripts
# and it is the responsibility of the CI system to run these scripts at the appropriate time.

# Odyssey's current CI provider of choice, AWS CodeBuild, does its thing and then does docker run this file.
# This file is responsible for running our trigger scripts, in the correct order, if they exist.
# Note that technically this is all run inside AWS CodeBuild's `build` stage, but the CI scripts don't need to know this

set -e

echo "Starting install phase..."
if [ -e build-scripts/install.sh ]; then build-scripts/install.sh; fi
echo "Finished install phase..."


echo "Starting pre_test phase..."
if [ -e build-scripts/pre_test.sh ]; then build-scripts/pre_test.sh; fi
echo "Finished pre_test phase"


echo "Starting test phase"
build-scripts/test.sh
echo "Finished test phase"

echo "Starting post_build phase"
if [ -e build-scripts/post_build.sh ]; then build-scripts/post_build.sh; fi
echo "Finished post_build phase"
