import 'package:flutter/material.dart';

class MyColors {
  const MyColors();

  static Color get almostBlack => const Color(0xFF252525);
  static Color get darkGrey => const Color(0xFF545454);
  static Color get midGrey => const Color(0xFF646464);
  static Color get lightGrey => const Color(0xFFC4C4C4);
  static Color get lighterGrey => const Color(0xFFEFEFEF);
  static Color get lightGreyBlueish => const Color(0xFFF1FCFE);
  static Color get greenBlueish => const Color(0xFF5AD7DF);
  static Color get orange => const Color(0xFFFF9F00);
  static Color get green => const Color(0xFF219653);
  static Color get blue => const Color(0xFF56CCF2);
  static Color get greenBlueish50 => const Color.fromRGBO(90, 215, 223, 50);
  static Color get greenBlueish20 => const Color(0xFFA5E9EE);
  static Color get white70 => const Color.fromRGBO(255, 255, 255, 70);

  static Color get statusBar => const Color(0xFF1CC7D2);
  static Color get skeletonHighlight => const Color.fromRGBO(255, 255, 255, 20);
  static Color get skeletonBase => const Color.fromRGBO(255, 255, 255, 70);
  static Color get skeletonHighlightAlt => const Color(0xFFF1FCFE);
  static Color? get skeletonBaseAlt => Colors.grey[200];
}
