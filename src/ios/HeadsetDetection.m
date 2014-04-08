#import "HeadsetDetection.h"
#import <Cordova/CDV.h>

@implementation HeadsetDetection

- (void) detect:(CDVInvokedUrlCommand*)command {
  NSString *callbackId = command.callbackId;
  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:[self isHeadsetEnabled]];
  [self writeJavascript:[result toSuccessCallbackString:callbackId]];
}

- (BOOL) isHeadsetEnabled {
  AVAudioSessionRouteDescription* route = [[AVAudioSession sharedInstance] currentRoute];
  for (AVAudioSessionPortDescription* desc in [route outputs]) {
    if ([[desc portType] isEqualToString:AVAudioSessionPortHeadphones] ||
        [[desc portType] isEqualToString:AVAudioSessionPortBluetoothHFP] ||
        [[desc portType] isEqualToString:AVAudioSessionPortBluetoothA2DP] ||
        [[desc portType] isEqualToString:AVAudioSessionPortBluetoothLE]) {
      return YES;
    }
  }
  return NO;
}

@end