import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavigationTitle extends StatelessWidget {
  const NavigationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Visibility(
        visible: ResponsiveBreakpoints.of(context).largerThan(MOBILE),
        child: GestureDetector(
          onTap: () => context.go('/home'),
          child: const AppLogo(),
        ),
      ),
    );
  }
}
