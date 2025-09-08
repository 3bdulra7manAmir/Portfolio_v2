import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class DeviceBreakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;
}

enum DeviceType { mobile, tablet, desktop }

class DeviceTypeHelper {
  factory DeviceTypeHelper() => _instance;
  DeviceTypeHelper._internal();
  static final DeviceTypeHelper _instance = DeviceTypeHelper._internal();

  static DeviceTypeHelper get instance => _instance;

  DeviceType get deviceType {
    final width = 1.sw;
    if (width < DeviceBreakpoints.mobile) {
      return DeviceType.mobile;
    } else if (width < DeviceBreakpoints.tablet) {
      return DeviceType.tablet;
    } else {
      return DeviceType.desktop;
    }
  }

  bool get isMobile => deviceType == DeviceType.mobile;
  bool get isTablet => deviceType == DeviceType.tablet;
  bool get isDesktop => deviceType == DeviceType.desktop;
}
