import 'package:flutter/material.dart';
import 'package:newest/widgets/horizontal_menu_item.dart';
import 'package:newest/widgets/responsiveness.dart';
import 'package:newest/widgets/vertical_menu_items.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;

  const SideMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
