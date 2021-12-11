import 'package:flutter/material.dart';

import 'device.dart';

class MySizes {
  const MySizes();

  static const double mainHorizontalMargin = 20;
  static const double mainVerticalMargin = 30;
  static const double gradientVerticalMargin = 50;

  static const double bottomWidgetHeightModal = 100;

  static double menuItemWidgth = (Device.instance.screenWidth - (mainHorizontalMargin * 2) - 20)/3;
  static double menuItemHeight = Device.instance.screenHeight * .15;

  static double buttonHeight = 40;

  static double bottomButtonContainer = buttonHeight + (mainHorizontalMargin * 2);

  static const EdgeInsets mainEdgeInsets = EdgeInsets.only(
    left: mainHorizontalMargin,
    right: mainHorizontalMargin,
  );

  static const EdgeInsets mainHorizontalEdgeInsets = EdgeInsets.symmetric(horizontal: mainHorizontalMargin);

  static const EdgeInsets gradientEdgeInsets = EdgeInsets.symmetric(
    horizontal: MySizes.mainHorizontalMargin,
    vertical: MySizes.gradientVerticalMargin,
  );
}