import 'package:flutter/material.dart';

class KeyboardDismissable extends StatelessWidget {
  KeyboardDismissable({this.child}) : assert(child != null);

  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: child,
    );
}