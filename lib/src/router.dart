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

const routerInitialLocation = '/login';

final router = GoRouter(
  routes: $appRoutes,
  debugLogDiagnostics: kDebugMode,
  initialLocation: routerInitialLocation,
);

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

@TypedGoRoute<LoginPageRoute>(
  path: '/login',
  name: 'Login',
)
class LoginPageRoute extends GoRouteData {
  const LoginPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}

@TypedGoRoute<QRPageRoute>(
  path: '/qr-scanner',
  name: 'QR-Scanner',
)
class QRPageRoute extends GoRouteData {
  const QRPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const QrPage();
  }
}

@TypedGoRoute<HomePageRoute>(
  path: '/home',
  name: 'Home',
)
class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<OnboardingPageRoute>(
  path: '/onboarding',
  name: 'Onboarding',
)
class OnboardingPageRoute extends GoRouteData {
  const OnboardingPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const OnboardingPage();
  }
}

@TypedGoRoute<QRViewScreenRoute>(
  path: '/qr-view',
  name: 'QR-View',
)
class QRViewScreenRoute extends GoRouteData {
  const QRViewScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return QRViewScreen(data: "hola");
  }
}
