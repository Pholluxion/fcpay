// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginPageRoute,
      $qRPageRoute,
      $homePageRoute,
      $onboardingPageRoute,
      $qRViewScreenRoute,
    ];

RouteBase get $loginPageRoute => GoRouteData.$route(
      path: '/login',
      name: 'Login',
      factory: $LoginPageRouteExtension._fromState,
    );

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) =>
      const LoginPageRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $qRPageRoute => GoRouteData.$route(
      path: '/qr-scanner',
      name: 'QR-Scanner',
      factory: $QRPageRouteExtension._fromState,
    );

extension $QRPageRouteExtension on QRPageRoute {
  static QRPageRoute _fromState(GoRouterState state) => const QRPageRoute();

  String get location => GoRouteData.$location(
        '/qr-scanner',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/home',
      name: 'Home',
      factory: $HomePageRouteExtension._fromState,
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingPageRoute => GoRouteData.$route(
      path: '/onboarding',
      name: 'Onboarding',
      factory: $OnboardingPageRouteExtension._fromState,
    );

extension $OnboardingPageRouteExtension on OnboardingPageRoute {
  static OnboardingPageRoute _fromState(GoRouterState state) =>
      const OnboardingPageRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $qRViewScreenRoute => GoRouteData.$route(
      path: '/qr-view',
      name: 'QR-View',
      factory: $QRViewScreenRouteExtension._fromState,
    );

extension $QRViewScreenRouteExtension on QRViewScreenRoute {
  static QRViewScreenRoute _fromState(GoRouterState state) =>
      const QRViewScreenRoute();

  String get location => GoRouteData.$location(
        '/qr-view',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
