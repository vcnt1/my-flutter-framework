import 'package:xepa/app/config//config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PagamentoItem extends StatelessWidget {
  PagamentoItem({Key key, this.value, this.data, this.autoSizeGroup, this.skeleton}) : super(key: key) {
    boxDecoration = MyDecoration.cardShadowless;
    selected = const SizedBox();
  }

  PagamentoItem.selected({Key key, this.value, this.data, this.autoSizeGroup, this.skeleton}) : super(key: key) {
    boxDecoration = MyDecoration.cardSelected;
    selected = Icon(
      Icons.circle,
      color: MyColors.greenBlueish,
      size: 16,
    );
  }

  final String value;
  final String data;
  final AutoSizeGroup autoSizeGroup;
  final Widget skeleton;

  Widget selected;
  BoxDecoration boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (Device.instance.screenWidth - (MySizes.mainHorizontalMargin * 2) - 10) * .7,
      height: Device.instance.screenHeight * .12,
      margin: const EdgeInsets.only(right: 10),
      decoration: boxDecoration,
      child: Stack(
        children: [
          Positioned(top: 10, right: 10, child: selected),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                skeleton == null
                    ? Text(
                        data ?? '',
                        style: MyTheme.typographyBlack.label1,
                      )
                    : SizedBox(),
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
          ),
        ],
      ),
    );
  }
}
