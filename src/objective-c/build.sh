#!/bin/bash

gcc -Wall ScreenSaverMonitor.m ScreenSaverMonitorMain.m -o ScreenSaverMonitor -lobjc -framework Cocoa

chmod +x ScreenSaverMonitor
