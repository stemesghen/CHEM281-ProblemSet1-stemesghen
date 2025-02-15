#!/bin/sh

mkdir -p work
docker run --rm -it -v "$(pwd)/work:/work" bse:dev
