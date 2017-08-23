#!/usr/bin/env bash

docker run --rm -it --dns 192.168.22.2 -v `pwd`:/code docker-registry.aiko.sh/tools/ant ant $@
