// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:admin_portal/pages/clients/clients.dart';
import 'package:admin_portal/pages/overview/overview.dart';
import 'package:admin_portal/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());

    case ClientPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
