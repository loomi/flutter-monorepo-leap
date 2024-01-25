import 'package:commons/app/shared/default_module.dart';
import 'package:commons/app/shared/i_dependency_injector.dart';
import 'package:flutter/material.dart';

import 'package:module_home/app/home_module.dart';

class CoreModuleConfig {
  final List<DefaultModule> _registeredModules = [
    HomeModule(),
  ];

  final IDependencyInjector? injector;

  CoreModuleConfig({this.injector});

  Map<String, WidgetBuilder> get routes {
    final Map<String, WidgetBuilder> routes = {};
    for (var module in _registeredModules) {
      routes.addAll(module.routes);
    }
    return routes;
  }

  void registerAllDependencies() {
    for (var module in _registeredModules) {
      module.registerDependencies(injector);
    }
  }
}
