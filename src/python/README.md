### Objective
Queries OS X to determine the screen lock state, among other things. The purpose
is to test the ability to query for that state when running as a daemon process.

### Running the Daemon
1. `sudo ./install.sh`
2. `sudo launchctl load /Library/LaunchDaemons/com.sevensignal.isscreenunlocked.plist`

  #### Unloading / Quitting the Daemon
  `sudo launchctl unload /Library/LaunchDaemons/com.sevensignal.isscreenunlocked.plist`

  #### Removing the Daemon
  `sudo deleteDaemon.sh`

### Interpreting Results
The log file located in `/Library/Logs/isscreenunlocked.stdout.log` should contain
the screen lock indication. When testing, force OS X to go into screen lock mode.
Then look at the log file.

The Python script only runs for about 30 seconds which means that the daemon only
runs for that long too.

## Conclusion
I was able to see that the screen lock occurred when run in user mode but not when
run as a daemon.
