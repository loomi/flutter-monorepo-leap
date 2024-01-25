import 'package:flutter/material.dart';

import 'package:commons/app/shared/default_module.dart';
import 'package:commons/app/shared/i_dependency_injector.dart';
import 'package:commons/app/shared/route_module.dart';
import 'package:module_home/app/module/domain/usecases/get_example_uc.dart';
import 'package:module_home/app/module/domain/usecases/intefaces/i_get_example_uc.dart';
import 'package:module_home/app/module/exports.dart';
import 'package:module_home/app/module/presenter/stores/example_store.dart';

class HomeModule implements DefaultModule {
  final HomeRouteModule _routeModule = HomeRouteModule();

  @override
  Map<String, WidgetBuilder> get routes => _routeModule.routes;

  @override
  void registerDependencies(IDependencyInjector? injector) {
    injector?.registerSingleton<ExampleStore>(ExampleStore());
    injector?.registerSingleton<IGetExampleUseCase>(GetExampleUseCase());
    // outras dependencias aqui...
  }

  @override
  RouteModule get routeModule => _routeModule;
}

class HomeRouteModule implements RouteModule {
  @override
  Map<String, WidgetBuilder> get routes => {
        HomePage.routeName: (_) => const HomePage(),
        // outras possíveis rotas aqui...
      };
}
