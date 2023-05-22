import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'growth_web_platform_interface.dart';

/// An implementation of [GrowthWebPlatform] that uses method channels.
class MethodChannelGrowthWeb extends GrowthWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('growth_web');
}
