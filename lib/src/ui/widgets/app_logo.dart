import 'package:flutter/material.dart';

import '../generated/generated.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(
      height: height ?? 150,
      width: width ?? 100,
    );
  }
}
