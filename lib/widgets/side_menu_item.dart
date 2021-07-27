import 'package:flutter/material.dart';
import 'package:professione/helpers/reponsiveness.dart';
import 'package:professione/widgets/horizontal_menu_item.dart';
import 'package:professione/widgets/vertical_menu_item.dart';
import 'package:professione/helpers/reponsiveness.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({Key key, @required this.itemName, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VertticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
