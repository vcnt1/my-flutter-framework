import 'package:flutter/material.dart';

import 'colors.dart';

class MyDecoration {
  const MyDecoration();

  static OutlineInputBorder enabledInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    gapPadding: 2,
    borderSide: BorderSide(
      color: MyColors.lighterGrey,
    ),
  );

  static OutlineInputBorder focusedInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    gapPadding: 2,
    borderSide: BorderSide(
      color: MyColors.greenBlueish50,
    ),
  );

  static BoxDecoration gradientContainer = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF1CC7D2),
        Color(0xFF5CD7DF),
        MyColors.lightGreyBlueish,
      ],
      stops: [
        0,
        0.65,
        1,
      ],
      begin: FractionalOffset.topCenter,
      end: FractionalOffset.bottomCenter,
    ),
  );

  static BoxDecoration defaultInput = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(
      color: MyColors.lighterGrey,
    ),
  );

  static BoxDecoration card = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: MyColors.lightGreyBlueish,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.15),
        blurRadius: 4,
        offset: const Offset(0, 4),
      ),
    ],
  );

  static BoxDecoration cardSelected = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
  );

  static BoxDecoration cardShadowless = BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: MyColors.lightGreyBlueish,
  );

  static BoxDecoration topBorderBox = BoxDecoration(
    border: Border(
      top: BorderSide(
        color: MyColors.lighterGrey,
      ),
    ),
  );
}
