import 'package:fcpay/src/ui/ui.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'navigation.dart';

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final breakpoint = ResponsiveBreakpoints.of(context).breakpoint;
    return switch (breakpoint.name) {
      MOBILE => _ScaffoldWithNavigationBar(navigationShell),
      TABLET => _ScaffoldWithNavigationRail(navigationShell, false),
      DESKTOP => _ScaffoldWithNavigationRail(navigationShell, true),
      (_) => _ScaffoldWithNavigationRail(navigationShell, false),
    };
  }
}

class _ScaffoldWithNavigationRail extends StatelessWidget {
  const _ScaffoldWithNavigationRail(this.navigationShell, this.expand);

  final StatefulNavigationShell navigationShell;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: const Color(0xffA7E04B),
      body: Row(
        children: [
          Column(
            children: [
              Visibility(
                visible: expand,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    border: Border(),
                    color: Color(0xffA7E04B),
                  ),
                  margin: EdgeInsets.zero,
                  child: Center(
                    child: AppLogo(
                      height: 300,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: _NavigationRail(
                  navigationShell: navigationShell,
                  expand: expand,
                ),
              ),
            ],
          ),
          VerticalDivider(
            thickness: 1,
            width: 1,
            color: colorScheme.primary.withOpacity(0.2),
          ),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }
}

class _NavigationRail extends StatelessWidget {
  const _NavigationRail({required this.navigationShell, required this.expand});

  final StatefulNavigationShell navigationShell;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return NavigationRail(
      backgroundColor: const Color(0xffA7E04B),
      extended: expand,
      selectedIndex: navigationShell.currentIndex,
      unselectedLabelTextStyle: theme.textTheme.bodyMedium,
      selectedLabelTextStyle: theme.textTheme.bodyMedium!
          .copyWith(fontWeight: FontWeight.bold, color: AppColors.black),
      onDestinationSelected: (index) {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },
      destinations: [
        for (final item in NavigationItem.values)
          NavigationRailDestination(
            icon: Icon(item.iconData),
            label: Text(
              item.label,
              style: UITextStyle.button.copyWith(color: AppColors.black),
            ),
          ),
      ],
    );
  }
}

class _ScaffoldWithNavigationBar extends StatelessWidget {
  const _ScaffoldWithNavigationBar(this.navigationShell);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: [
          for (final item in NavigationItem.values)
            NavigationDestination(
              icon: Icon(item.iconData),
              label: item.label,
            ),
        ],
      ),
    );
  }
}
