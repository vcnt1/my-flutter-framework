import 'package:flutter/material.dart';

enum BuildMode { DEBUG, PROFILE, RELEASE }

class Device {
  static Device? _instance;

  Device._(this.mediaQueryData) {
    loadValues();
  }

  factory Device(MediaQueryData mediaQueryData) {
    _instance ??= Device._(mediaQueryData);
    return _instance!;
  }

  factory Device.instance() {
    return _instance!;
  }

  bool unloaded = true;
  MediaQueryData mediaQueryData;
  double screenWidth = 0;
  double screenHeight = 0;
  double aspectRatio = 0;
  double pixelRatio = 0;
  double safeAreaHorizontal = 0;
  double safeAreaVertical = 0;

  void loadValues() {
    if (unloaded) {
      unloaded = false;
      screenWidth = mediaQueryData.size.width;
      screenHeight = mediaQueryData.size.height;
      aspectRatio = screenWidth / screenHeight;
      safeAreaHorizontal = mediaQueryData.padding.left + mediaQueryData.padding.right;
      safeAreaVertical = mediaQueryData.padding.top + mediaQueryData.padding.bottom;
      pixelRatio = mediaQueryData.devicePixelRatio;
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
