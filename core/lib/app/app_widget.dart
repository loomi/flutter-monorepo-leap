import 'package:flutter/material.dart';

import 'app_module.dart';

class AppWidget extends StatelessWidget {
  final String initialRoute;
  const AppWidget({
    Key? key,
    required this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Core',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: initialRoute,
      routes: CoreModuleConfig().routes,
    );
  }
}
