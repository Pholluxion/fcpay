import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

enum NavigationItem {
  home(iconData: Icons.dashboard_outlined),
  qrview(iconData: Icons.qr_code),
  ;

  const NavigationItem({required this.iconData});
  final IconData iconData;
  String get label => name.pascalCase;
}
