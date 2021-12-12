import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({Key? key, required this.children}) : super(key: key){
    padding = MySizes.gradientEdgeInsets;
  }

  GradientContainer.noPadding({Key? key, required this.children}) : super(key: key) {
    padding = const EdgeInsets.symmetric(vertical: MySizes.gradientVerticalMargin);
  }

  final List<Widget> children;
  EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: MyDecoration.gradientContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
