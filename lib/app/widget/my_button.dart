import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({Key key, @required this.onTap, this.label, this.child, color}) : super(key: key) {
    buttonDecoration = BoxDecoration(
      color: color ?? MyColors.greenBlueish,
      borderRadius: BorderRadius.circular(5.0),
    );
    labelStyle = MyTheme.typographyWhite.label1;
    highlightColor = MyColors.greenBlueish;
    splashColor = MyColors.white70;
  }

  MyButton.outlined({Key key, @required this.onTap, this.label, this.child}) : super(key: key) {
    buttonDecoration = BoxDecoration(
      border: Border.all(color: MyColors.lightGrey),
      borderRadius: BorderRadius.circular(5.0),
    );
    labelStyle = MyTheme.typographyBlack.label1;
    highlightColor = Colors.grey[200];
    splashColor = MyColors.lightGrey;
  }

  MyButton.disabled({Key key, @required this.label}) : super(key: key) {
    onTap = () {};
    buttonDecoration = BoxDecoration(
      color: MyColors.lightGrey,
      borderRadius: BorderRadius.circular(5.0),
    );
    labelStyle = MyTheme.typographyWhite.label1;
    highlightColor = MyColors.lightGrey;
    splashColor = MyColors.lightGrey;
  }

  Function onTap;
  Widget child;
  String label;
  BoxDecoration buttonDecoration;
  TextStyle labelStyle;
  Color highlightColor;
  Color splashColor;

  @override
  Widget build(BuildContext context) => Ink(
        decoration: buttonDecoration,
        child: InkWell(
          onTap: onTap,
          highlightColor: highlightColor,
          splashColor: splashColor,
          child: Container(
            height: MySizes.buttonHeight,
            child: Center(
              child: child ??
                  Text(
                    label,
                    style: labelStyle,
                  ),
            ),
          ),
        ),
      );
}
