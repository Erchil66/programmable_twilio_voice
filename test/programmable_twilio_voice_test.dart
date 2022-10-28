import 'package:flutter_test/flutter_test.dart';
import 'package:programmable_twilio_voice/programmable_twilio_voice.dart';
import 'package:programmable_twilio_voice/programmable_twilio_voice_platform_interface.dart';
import 'package:programmable_twilio_voice/programmable_twilio_voice_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockProgrammableTwilioVoicePlatform
    with MockPlatformInterfaceMixin
    implements ProgrammableTwilioVoicePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ProgrammableTwilioVoicePlatform initialPlatform = ProgrammableTwilioVoicePlatform.instance;

  test('$MethodChannelProgrammableTwilioVoice is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelProgrammableTwilioVoice>());
  });

  test('getPlatformVersion', () async {
    ProgrammableTwilioVoice programmableTwilioVoicePlugin = ProgrammableTwilioVoice();
    MockProgrammableTwilioVoicePlatform fakePlatform = MockProgrammableTwilioVoicePlatform();
    ProgrammableTwilioVoicePlatform.instance = fakePlatform;

    expect(await programmableTwilioVoicePlugin.getPlatformVersion(), '42');
  });
}
