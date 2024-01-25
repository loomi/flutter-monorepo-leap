import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:commons/app/routes.dart';
import 'package:commons/app/shared/get_it_injector.dart';
import 'package:core/app/app_module.dart';
import 'package:core/main.dart';

void main() async {
  // WidgetsBinding widgetsBinding =
  WidgetsFlutterBinding.ensureInitialized();

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  CoreModuleConfig(injector: GetItInjector()).registerAllDependencies();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.black.withOpacity(0.2),
    ),
  );

  runApp(
    const AppWidget(
      initialRoute: Routes.homePage,
    ),
  );
}
