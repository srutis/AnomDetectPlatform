#!/bin/bash
[ $# -lt 1 ] && echo "Usage: $0 <imageID>" && exit 1
imageID=$1
docker run -it -p9999:9999 -v${PWD}:/src $imageID
