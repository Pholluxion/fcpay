import 'package:fcpay/src/features/account/view/account_page.dart';
import 'package:fcpay/src/features/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/home/home.dart';
import 'features/login/login.dart';
import 'features/qr/qr.dart';
import 'utils/widgets/widgets.dart';

import 'features/qr/view/qr_code_generator.dart';

part 'router.g.dart';

const routerInitialLocation = '/init';

final router = GoRouter(
  routes: $appRoutes,
  debugLogDiagnostics: kDebugMode,
  initialLocation: routerInitialLocation,
);

@TypedStatefulShellRoute<ShellRouteData>(
  branches: [
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<HomePageRoute>(
          path: '/home',
          name: 'Home',
          routes: [
            TypedGoRoute<AccountPageRoute>(
              path: ':accountId',
              name: 'Account',
              routes: [
                TypedGoRoute<QRGenPageRoute>(
                  path: 'qr-view',
                  name: 'QR-View',
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class ShellRouteData extends StatefulShellRouteData {
  const ShellRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ScaffoldWithNavigation(
      navigationShell: navigationShell,
    );
  }
}

class AccountPageRoute extends GoRouteData {
  const AccountPageRoute({required this.accountId});
  final String accountId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AccountPage(account: accountId);
  }
}

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<OnboardingPageRoute>(
  path: '/init',
  name: 'Onboarding',
  routes: [
    TypedGoRoute<LoginPageRoute>(
      path: 'login',
      name: 'Login',
    ),
    TypedGoRoute<QRPageRoute>(
      path: 'qr-scanner',
      name: 'QR-Scanner',
    )
  ],
)
class OnboardingPageRoute extends GoRouteData {
  const OnboardingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingPage();
  }
}

class LoginPageRoute extends GoRouteData {
  const LoginPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

class QRPageRoute extends GoRouteData {
  const QRPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const QrPage();
  }
}

class QRGenPageRoute extends GoRouteData {
  const QRGenPageRoute({required this.accountId});

  final String accountId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QRGenPage(data: accountId);
  }
}
