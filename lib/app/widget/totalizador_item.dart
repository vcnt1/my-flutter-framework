import 'package:xepa/app/config//config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TotalizadorItem extends StatelessWidget {
  const TotalizadorItem({Key key, this.value, this.label, this.autoSizeGroup, this.skeleton}) : super(key: key);

  final String value;
  final String label;
  final AutoSizeGroup autoSizeGroup;
  final Widget skeleton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.instance.screenHeight * .1,
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
                  style: MyTheme.typographyBlack.headline4,
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
