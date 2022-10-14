// ignore_for_file: prefer_const_constructors

import 'package:admin_portal/pages/overview/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        InfoCard(
            title: 'Applications',
            value: '200',
            topColor: Colors.orange,
            //isActive: true,
            onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
            title: 'Approved Applications',
            value: '60',
            topColor: Colors.lightGreen,
            //isActive: true,
            onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
            title: 'Not Approved',
            value: '90',
            topColor: Colors.redAccent,
            //isActive: true,
            onTap: () {}),
        SizedBox(
          width: _width / 64,
        ),
      ],
    );
  }
}
