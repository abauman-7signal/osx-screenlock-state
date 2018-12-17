#!/bin/bash

. runtime.env

rm -v $DAEMON_LAUNCH_DIR/$DAEMON_PLIST
rm -rfv "$DAEMON_FOLDER"
rm -v "$LOG_FOLDER/$LOG_BASE_NAME"*
