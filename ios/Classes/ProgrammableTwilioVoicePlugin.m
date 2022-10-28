#import "ProgrammableTwilioVoicePlugin.h"
#if __has_include(<programmable_twilio_voice/programmable_twilio_voice-Swift.h>)
#import <programmable_twilio_voice/programmable_twilio_voice-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "programmable_twilio_voice-Swift.h"
#endif

@implementation ProgrammableTwilioVoicePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftProgrammableTwilioVoicePlugin registerWithRegistrar:registrar];
}
@end
