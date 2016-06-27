#import <AVFoundation/AVFoundation.h>
#import <Cordova/CDV.h>

@interface HeadsetDetection :CDVPlugin

- (void) detect:(CDVInvokedUrlCommand*)command;
- (void) registerRemoteEvents:(CDVInvokedUrlCommand*)command;

@end