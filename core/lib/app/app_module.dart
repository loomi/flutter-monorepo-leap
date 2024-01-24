import 'package:flutter/material.dart';

import 'package:module_home/app/home_module.dart';

class CoreModuleConfig {
  final List<dynamic> _registeredModules = [
    HomeModule(),
  ];

  Map<String, WidgetBuilder> get routes {
    final Map<String, WidgetBuilder> routes = {};
    for (var module in _registeredModules) {
      routes.addAll(module.routes);
    }
    return routes;
  }
}
