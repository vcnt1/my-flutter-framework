import 'package:xepa/app/config//config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TotalizadorRow extends StatelessWidget {
  const TotalizadorRow({Key key, this.firstValue, this.secondValue, this.firstLabel, this.secondLabel, this.autoSizeGroup, this.skeleton})
      : super(key: key);

  final String firstValue;
  final String secondValue;
  final String firstLabel;
  final String secondLabel;
  final AutoSizeGroup autoSizeGroup;
  final Widget skeleton;

  @override
  Widget build(BuildContext context) {
    bool hasSecondTotalizador = skeleton == null ? (secondLabel != null && secondValue != null) : true;
    return Container(
      height: Device.instance.screenHeight * .12,
      child: Row(
        children: [
          Flexible(
            flex: 5,
            fit: FlexFit.tight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              decoration: MyDecoration.card,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstLabel,
                    style: MyTheme.typographyBlack.label1,
                  ),
                  Expanded(
                    child: skeleton ??
                        AutoSizeText(
                          firstValue,
                          style: MyTheme.typographyBlack.headline3,
                          minFontSize: 10,
                          maxLines: 1,
                          group: autoSizeGroup,
                        ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10.0),
          hasSecondTotalizador
              ? Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    decoration: MyDecoration.card,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          secondLabel,
                          style: MyTheme.typographyBlack.label1,
                        ),
                        Expanded(
                          child: skeleton ??
                              AutoSizeText(
                                secondValue,
                                style: MyTheme.typographyBlack.headline3,
                                minFontSize: 10,
                                maxLines: 1,
                                group: autoSizeGroup,
                              ),
                        ),
                      ],
                    ),
                  ),
                )
              : Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: SizedBox(),
                ),
        ],
      ),
    );
  }
}
