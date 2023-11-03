#!/bin/bash

set -o errexit

PYTHON_VERSION=3.10.13

VERSION_ARGS="--build-arg PYTHON_VERSION=$PYTHON_VERSION"

VERSION=$(git describe --match "v[0-9]*" --tags HEAD --always)
BUILD_LABELS="\
--build-arg BUILD_DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ") \
--build-arg VERSION=${VERSION} \
--build-arg REVISION=$(git log -1 --format="%H")"

docker build $VERSION_ARGS $BUILD_LABELS \
    -t unfoldedcircle/r2-pyinstaller:$PYTHON_VERSION \
    -t unfoldedcircle/r2-pyinstaller:$PYTHON_VERSION-$VERSION .