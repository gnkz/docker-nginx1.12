#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/build.sh"

docker run -it --rm -p 8082:80 $USERNAME/$REPONAME:$TAG
