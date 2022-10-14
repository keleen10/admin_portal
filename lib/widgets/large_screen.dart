// ignore_for_file: prefer_const_constructors

import 'package:admin_portal/helpers/local_navigator.dart';
import 'package:admin_portal/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(child: SideMenu()),
        Expanded(flex: 5, child: localNavigator()),
      ],
    );
  }
}
