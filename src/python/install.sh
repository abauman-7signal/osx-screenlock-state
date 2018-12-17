#!/bin/bash

. runtime.env

cp -v $DAEMON_PLIST $DAEMON_LAUNCH_DIR
mkdir -vp "$DAEMON_FOLDER"
cp -v $BIN "$DAEMON_FOLDER"
