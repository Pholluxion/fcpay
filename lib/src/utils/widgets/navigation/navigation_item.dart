import 'package:flutter/material.dart';

enum NavigationItem {
  home(iconData: Icons.credit_card, label: 'Cuentas'),
  qrview(iconData: Icons.qr_code, label: 'Mis códigos QR'),
  // dashboard(iconData: Icons.bar_chart, label: 'Dashboard'),
  ;

  const NavigationItem({
    required this.iconData,
    required this.label,
  });

  final IconData iconData;
  final String label;
}
