import 'package:admin_portal/constants/styles.dart';
import 'package:admin_portal/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menucontroller extends GetxController {
  static Menucontroller instance = Get.find();

  var activeItem = OverviewPageDisplayName.obs;
  var hoverItem = ''.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case ClientPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: dark,
      );
    }

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
