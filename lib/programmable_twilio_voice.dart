
import 'programmable_twilio_voice_platform_interface.dart';

class ProgrammableTwilioVoice {
  Future<String?> getPlatformVersion() {
    return ProgrammableTwilioVoicePlatform.instance.getPlatformVersion();
  }
}
