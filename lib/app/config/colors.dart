import 'package:flutter/material.dart';

class MyColors {
  const MyColors();

  static Color get almostBlack => Color(0xFF252525);
  static Color get darkGrey => Color(0xFF545454);
  static Color get midGrey => Color(0xFF646464);
  static Color get lightGrey => Color(0xFFC4C4C4);
  static Color get lighterGrey => Color(0xFFEFEFEF);
  static Color get lightGreyBlueish => Color(0xFFF1FCFE);
  static Color get greenBlueish => Color(0xFF5AD7DF);
  static Color get orange => Color(0xFFFF9F00);
  static Color get green => Color(0xFF219653);
  static Color get blue => Color(0xFF56CCF2);
  static Color get greenBlueish50 => Color.fromRGBO(90, 215, 223, 50);
  static Color get greenBlueish20 => Color(0xFFA5E9EE);
  static Color get white70 => Color.fromRGBO(255, 255, 255, 70);

  static Color get statusBar => Color(0xFF1CC7D2);
  static Color get skeletonHighlight => Color.fromRGBO(255, 255, 255, 20);
  static Color get skeletonBase => Color.fromRGBO(255, 255, 255, 70);
  static Color get skeletonHighlightAlt => Color(0xFFF1FCFE);
  static Color get skeletonBaseAlt => Colors.grey[200];
}
