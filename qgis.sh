#!/usr/bin/env bash

XSOCKET=/tmp/.X11-unix

docker run -ti --rm \
      -e DISPLAY=unix$DISPLAY \
      -v $XSOCKET:$XSOCKET \
      -v ${HOME}/qgis_d_projects:/root \
      docker_qgis $1
