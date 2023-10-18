import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../generated/assets.gen.dart';

/// {@template app_logo}
/// A default app logo.
/// {@endtemplate}
class AppLogo extends StatelessWidget {
  /// {@macro app_logo}
  const AppLogo._({required SvgPicture logo, super.key}) : _logo = logo;

  /// The dark app logo.
  AppLogo.dark({Key? key})
      : this._(
          key: key,
          logo: Assets.images.continueWithGoogle.svg(
            fit: BoxFit.cover,
            width: 172,
            height: 24,
          ),
        );

  /// The light app logo.
  AppLogo.light({Key? key})
      : this._(
          key: key,
          logo: Assets.images.continueWithGoogle.svg(
            fit: BoxFit.cover,
            width: 172,
            height: 24,
          ),
        );

  /// The logo to be displayed.
  final SvgPicture _logo;

  @override
  Widget build(BuildContext context) {
    return _logo;
  }
}
