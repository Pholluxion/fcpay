import 'package:flutter/material.dart';

import 'navigation_title.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffA7E04B),
      title: const NavigationTitle(),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
