// ignore_for_file: prefer_const_constructors

import 'package:admin_portal/constants/controllers.dart';
import 'package:admin_portal/helpers/responsiveness.dart';
import 'package:admin_portal/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
