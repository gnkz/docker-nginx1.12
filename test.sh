#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"                                                                 
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi                                               
. "$DIR/build.sh"

TEST_NAME=gnkz_nginx_test

docker run -d --name $TEST_NAME --rm $USERNAME/$REPONAME:$TAG

docker ps | grep $TEST_NAME

STATUS=$?

docker stop $TEST_NAME

exit $STATUS
