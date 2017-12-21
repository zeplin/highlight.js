#!/bin/bash
set -e

BUILD_DIR="build"
VERSION=$(git describe --tags --exact-match)

node tools/build.js swift objectivec xml css scss less stylus javascript -t cdn
sudo aws s3 cp $BUILD_DIR/ $S3_DIR/$VERSION/ --recursive --acl public-read
