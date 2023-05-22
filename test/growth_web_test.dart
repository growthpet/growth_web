import 'package:flutter_test/flutter_test.dart';
import 'package:growth_web/growth_web_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGrowthWebPlatform
    with MockPlatformInterfaceMixin
    implements GrowthWebPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {}
