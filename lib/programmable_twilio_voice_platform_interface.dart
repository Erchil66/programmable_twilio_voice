import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'programmable_twilio_voice_method_channel.dart';

abstract class ProgrammableTwilioVoicePlatform extends PlatformInterface {
  /// Constructs a ProgrammableTwilioVoicePlatform.
  ProgrammableTwilioVoicePlatform() : super(token: _token);

  static final Object _token = Object();

  static ProgrammableTwilioVoicePlatform _instance = MethodChannelProgrammableTwilioVoice();

  /// The default instance of [ProgrammableTwilioVoicePlatform] to use.
  ///
  /// Defaults to [MethodChannelProgrammableTwilioVoice].
  static ProgrammableTwilioVoicePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ProgrammableTwilioVoicePlatform] when
  /// they register themselves.
  static set instance(ProgrammableTwilioVoicePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
