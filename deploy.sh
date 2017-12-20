#!/bin/bash
set -e

BUILD_DIR="build"
S3_DIR="s3://zeplin-packages-prod/highlight.js"
VERSION=$(git describe --tags --exact-match)

sudo aws s3 cp $BUILD_DIR/ $S3_DIR/$VERSION/ --recursive
