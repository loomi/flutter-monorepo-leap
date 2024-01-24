import 'package:flutter/material.dart';

import 'package:commons/app/shared/route_module.dart';
import 'package:module_home/app/module/exports.dart';

class HomeModule {
  final HomeRouteModule _routeModule = HomeRouteModule();

  Map<String, WidgetBuilder> get routes => _routeModule.routes;
}

class HomeRouteModule implements RouteModule {
  @override
  Map<String, WidgetBuilder> get routes => {
        HomePage.routeName: (_) => const HomePage(),
      };
}
