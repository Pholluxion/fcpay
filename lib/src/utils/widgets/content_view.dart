import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xlg),
      child: child,
    );
  }
}
