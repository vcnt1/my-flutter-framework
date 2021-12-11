import 'package:xepa/app/widget/skeleton.dart';
import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';

class MyListSkeleton extends StatelessWidget {
  MyListSkeleton({Key key, this.scrollDirection = Axis.vertical, double width, double height}) : super(key: key) {
    this.width = width ?? double.infinity;
    this.height = height ?? Device.instance.screenHeight * .1;
    this.padding = scrollDirection == Axis.vertical ? const EdgeInsets.symmetric(vertical: 10) : const EdgeInsets.symmetric(horizontal: 10);
  }

  final Axis scrollDirection;

  double width;
  double height;
  EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      scrollDirection: scrollDirection,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: padding,
        child: Skeleton(
          width: width,
          height: height,
        ),
      ),
    );
  }
}
