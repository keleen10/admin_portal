import 'package:admin_portal/constants/controllers.dart';
import 'package:admin_portal/routing/router.dart';
import 'package:admin_portal/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
