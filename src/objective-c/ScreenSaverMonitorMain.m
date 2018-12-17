// ScreenSaverMonitorMain.m
#import "ScreenSaverMonitor.h"
#import <Foundation/NSFileManager.h>

int main( int argc, char ** argv) {
  NSLog(@"I am alive");
  [[NSFileManager defaultManager] createFileAtPath:@"notification.log" contents:nil attributes:nil];
  NSString *str = @"File with notifications";
  [str writeToFile:@"notification.log" atomically:YES encoding:NSUTF8StringEncoding error:nil];

  [[ScreenSaverMonitor alloc] init];
  return 0;
}
