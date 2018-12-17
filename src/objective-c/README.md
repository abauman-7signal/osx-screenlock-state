### Objective
Hooks several OS X notifications and prints and logs a simple message when the
event occurs. The purpose is to test the ability to receive these notifications
when running as a daemon process.

### Building
`./build.sh`

### Running the Daemon
1. `sudo ./install.sh`
2. `sudo launchctl load /Library/LaunchDaemons/com.sevensignal.screensavermonitor.plist`

  #### Unloading / Quitting the Daemon
  `sudo launchctl unload /Library/LaunchDaemons/com.sevensignal.screensavermonitor.plist`

  #### Removing the Daemon
  `sudo deleteDaemon.sh`

### Interpreting Results
The `notification.log` file gets created when the daemon loads. It will contain
screen lock notifications if the daemon detected that event. When testing, force
OS X to go into screen lock mode. Then look in the `notification.log` for indications
that the daemon detected the event.

To observe events being trapped, run the ScreenSaverMonitor as a user mode
application by invoking `./ScreenSaverMonitor` from the command line.

### Conclusion
I was able to get the monitor to trap screen lock events when run in user mode
but not when run as a daemon.
