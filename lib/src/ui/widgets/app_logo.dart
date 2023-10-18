import 'package:flutter/material.dart';

import '../generated/generated.dart';

/// {@template app_logo}
/// A default app logo.
/// {@endtemplate}
class AppLogo extends StatelessWidget {
  /// {@macro app_logo}
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.logoLight.image(height: 150.0, width: 100.0);
  }
}
