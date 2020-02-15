import 'dart:async';

import 'package:flutter/services.dart';

class Ttsplugin {
  static const MethodChannel _channel =
      const MethodChannel('ttsplugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
