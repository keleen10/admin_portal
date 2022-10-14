// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:admin_portal/pages/overview/widgets/info_card.dart';
import 'package:admin_portal/pages/overview/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverviewCardSmallScreen extends StatelessWidget {
  const OverviewCardSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
              title: 'Applications',
              value: '200',
              topColor: Colors.orange,
              isActive: true,
              onTap: () {}),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
              title: 'Approved Applications',
              value: '60',
              topColor: Colors.lightGreen,
              isActive: true,
              onTap: () {}),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
              title: 'Not Approved',
              value: '90',
              topColor: Colors.redAccent,
              isActive: true,
              onTap: () {}),
          SizedBox(
            width: _width / 64,
          ),
        ],
      ),
    );
  }
}
