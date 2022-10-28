import Flutter
import UIKit

public class SwiftProgrammableTwilioVoicePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "programmable_twilio_voice", binaryMessenger: registrar.messenger())
    let instance = SwiftProgrammableTwilioVoicePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
