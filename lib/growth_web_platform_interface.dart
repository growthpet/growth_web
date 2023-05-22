import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'growth_web_method_channel.dart';

abstract class GrowthWebPlatform extends PlatformInterface {
  /// Constructs a GrowthWebPlatform.
  GrowthWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static GrowthWebPlatform _instance = MethodChannelGrowthWeb();

  /// The default instance of [GrowthWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelGrowthWeb].
  static GrowthWebPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GrowthWebPlatform] when
  /// they register themselves.
  static set instance(GrowthWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
