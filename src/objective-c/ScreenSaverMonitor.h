// ScreenSaverMonitor.h
#import <Foundation/NSObject.h>
#import <Foundation/NSNotification.h>

@interface ScreenSaverMonitor: NSObject {}
-(id) init;
-(void) receive: (NSNotification*) notification;
@end
