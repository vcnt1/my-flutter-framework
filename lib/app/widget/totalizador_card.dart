import 'package:xepa/app/config//config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TotalizadorCard extends StatelessWidget {
  const TotalizadorCard({Key key, this.value, this.label, this.autoSizeGroup, this.skeleton}) : super(key: key);

  final String value;
  final String label;
  final AutoSizeGroup autoSizeGroup;
  final Widget skeleton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (Device.instance.screenWidth - (MySizes.mainHorizontalMargin * 2) - 10) * .5,
      height: Device.instance.screenHeight * .12,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: MyDecoration.card,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: MyTheme.typographyBlack.label1,
          ),
          Expanded(
            child: skeleton ??
                AutoSizeText(
                  value,
                  style: MyTheme.typographyBlack.headline3,
                  minFontSize: 10,
                  maxLines: 1,
                  group: autoSizeGroup,
                ),
          ),
        ],
      ),
    );
  }
}
