// ScreenSaverMonitor.m
#import "ScreenSaverMonitor.h"
#import <Foundation/NSString.h>
#import <Foundation/NSDistributedNotificationCenter.h>
#import <Foundation/NSRunLoop.h>
#import <Foundation/NSFileHandle.h>
#import <stdio.h>

@implementation ScreenSaverMonitor
-(id) init {
  NSDistributedNotificationCenter * center
    = [NSDistributedNotificationCenter defaultCenter];

  [center addObserver: self
          selector:    @selector(receive:)
          name:        @"com.apple.screensaver.didstart"
          object:      nil
  ];
  [center addObserver: self
          selector:    @selector(receive:)
          name:        @"com.apple.screensaver.didstop"
          object:      nil
  ];
  [center addObserver: self
          selector:    @selector(receive:)
          name:        @"com.apple.screenIsLocked"
          object:      nil
  ];
  [center addObserver: self
          selector:    @selector(receive:)
          name:        @"com.apple.screenIsUnlocked"
          object:      nil
  ];
  printf("running loop... (^C to quit)");
  [[NSRunLoop currentRunLoop] run];
  printf("...ending loop");
  return self;
}
-(void) receive: (NSNotification*) notification {
  NSString *str = [NSString stringWithFormat:@"%@\n", [notification name]];
  printf("%s\n", [[notification name] UTF8String] );
  NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:@"notification.log"];
  [fileHandle seekToEndOfFile];
  [fileHandle writeData:[str dataUsingEncoding:NSUTF8StringEncoding]];
  [fileHandle closeFile];
  // [str writeToFile:@"notification.log" atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
@end
