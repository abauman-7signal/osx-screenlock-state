#!/usr/bin/python

import sys, Quartz, time, datetime

startTime = datetime.datetime.utcnow()
print "Start time: %s" % startTime

currentTime = datetime.datetime.utcnow()
while (currentTime - startTime).seconds < 30:
    d=Quartz.CGSessionCopyCurrentDictionary()
    print d
    isMacScreenUnlocked = (d and
        d.get("CGSSessionScreenIsLocked", 0) == 0 and
        d.get("kCGSSessionOnConsoleKey", 0) == 1)

    print "isMacScreenUnlocked: %s" % isMacScreenUnlocked
    time.sleep(3)
    currentTime = datetime.datetime.utcnow()


print "End time: %s" % currentTime
print "Execution time: %s" % (currentTime - startTime)

sys.exit(isMacScreenUnlocked)
