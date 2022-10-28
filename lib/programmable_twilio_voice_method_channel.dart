import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'programmable_twilio_voice_platform_interface.dart';

/// An implementation of [ProgrammableTwilioVoicePlatform] that uses method channels.
class MethodChannelProgrammableTwilioVoice extends ProgrammableTwilioVoicePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('programmable_twilio_voice');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
