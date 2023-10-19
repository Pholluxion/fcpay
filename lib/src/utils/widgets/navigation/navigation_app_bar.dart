import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff279445),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
