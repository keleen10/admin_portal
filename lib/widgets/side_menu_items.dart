import 'package:admin_portal/helpers/responsiveness.dart';
import 'package:admin_portal/widgets/horizontal_menu_items.dart';
import 'package:admin_portal/widgets/vertical_menu_items.dart';
import 'package:flutter/material.dart';

class SideMenuItems extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const SideMenuItems({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItems(itemName: itemName, onTap: onTap);
    } else {
      return HorizontalMenuItems(itemName: itemName, onTap: onTap);
    }
  }
}
