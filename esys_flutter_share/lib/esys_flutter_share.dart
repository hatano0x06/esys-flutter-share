import 'dart:async';

import 'package:flutter/services.dart';

class EsysFlutterShare {
  static const MethodChannel _channel =
      const MethodChannel('esys_flutter_share');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
