#import "HeadsetDetection.h"
#import <Cordova/CDV.h>

@implementation HeadsetDetection

- (void) detect:(CDVInvokedUrlCommand*)command {
  NSString *callbackId = command.callbackId;

  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:[self isHeadsetPluggedIn]];
  [self writeJavascript:[result toSuccessCallbackString:callbackId]];
}

- (BOOL)isHeadsetPluggedIn {
    AVAudioSessionRouteDescription* route = [[[AVAudioSession] sharedInstance] currentRoute];
    for (AVAudioSessionPortDescription* desc in [route outputs]) {
        if ([[desc portType] isEqualToString:AVAudioSessionPortHeadphones]) {
            return YES;
        }
    }
    return NO;
}

@end