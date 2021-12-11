import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({Key key, @required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MySizes.mainEdgeInsets,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
