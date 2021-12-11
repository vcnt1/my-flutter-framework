import 'package:flutter/material.dart';

enum BuildMode { DEBUG, PROFILE, RELEASE }

class Device {
  Device._privateConstructor();

  static final Device _instance = Device._privateConstructor();

  static Device get instance => _instance;

  bool unloaded = true;
  MediaQueryData _mediaQueryData;
  double screenWidth;
  double screenHeight;
  double aspectRatio;
  double pixelRatio;
  double safeAreaHorizontal;
  double safeAreaVertical;

  void loadSizes(BuildContext context) {
    if (unloaded) {
      unloaded = false;
      _mediaQueryData = MediaQuery.of(context);
      screenWidth = _mediaQueryData.size.width;
      screenHeight = _mediaQueryData.size.height;
      aspectRatio = screenWidth / screenHeight;
      safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
      safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
      pixelRatio = _mediaQueryData.devicePixelRatio;
    }
  }

  static BuildMode currentBuildMode() {
    if (const bool.fromEnvironment('dart.vm.product')) {
      return BuildMode.RELEASE;
    }
    var result = BuildMode.PROFILE;

    assert(() {
      result = BuildMode.DEBUG;
      return true;
    }());
    return result;
  }
}
