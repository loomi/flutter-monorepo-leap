import 'package:flutter/widgets.dart';

import 'package:common_dependencies/main.dart';
import 'package:commons/app/utils/screen_utils.dart';

class ScaledAppWrapper extends StatelessWidget {
  final Widget child;
  const ScaledAppWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtils.setScale();

    return MediaQuery(
      data: MediaQuery.of(context).scale(),
      child: child,
    );
  }
}
