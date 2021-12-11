import 'package:xepa/app/widget/modal/modal_top_decorator.dart';
import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';

class BottomSheetContainer extends StatelessWidget {
  BottomSheetContainer({Key key, @required List<Widget> children, @required this.navigatorState, bottomWidget}) : super(key: key) {
    children.insert(0, ModalTopDecorator());
    this.children = children;
    this.bottomWidget = bottomWidget ?? SizedBox();
    this.maxHeight = Device.instance.screenHeight * .85;
  }

  BottomSheetContainer.custom({Key key, @required this.children, @required this.navigatorState, bottomWidget}) : super(key: key) {
    this.bottomWidget = bottomWidget ?? SizedBox();
    this.maxHeight = Device.instance.screenHeight * .7;
  }

  List<Widget> children;
  Widget bottomWidget;
  NavigatorState navigatorState;

  double maxHeight;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        navigatorState.pop();
      },
      child: Container(
        constraints: BoxConstraints(
          maxHeight: maxHeight,
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: bottomWidget is SizedBox ? 30 : MySizes.bottomWidgetHeightModal),
              margin: MySizes.mainHorizontalEdgeInsets,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ),
            Positioned(
              bottom: 0,
              child: bottomWidget,
            ),
          ],
        ),
      ),
    );
  }
}
