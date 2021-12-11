import 'package:xepa/app/config//config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuperiorBar extends StatelessWidget {
  const SuperiorBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(MyRouter.menuRoute),
          child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 10.0, 10.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.lightGreyBlueish),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.store,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'Guilato Sorvetes',
                  style: MyTheme.typographyWhite.default2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
