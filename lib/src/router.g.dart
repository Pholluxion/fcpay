// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $shellRouteData,
      $onboardingPageRoute,
    ];

RouteBase get $shellRouteData => StatefulShellRouteData.$route(
      factory: $ShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/home',
              name: 'Home',
              factory: $HomePageRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':accountId',
                  name: 'Account',
                  factory: $AccountPageRouteExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'qr-view',
                      name: 'QR-View',
                      factory: $QRGenPageRouteExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $ShellRouteDataExtension on ShellRouteData {
  static ShellRouteData _fromState(GoRouterState state) =>
      const ShellRouteData();
}

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

extension $AccountPageRouteExtension on AccountPageRoute {
  static AccountPageRoute _fromState(GoRouterState state) => AccountPageRoute(
        accountId: state.pathParameters['accountId']!,
      );

  String get location => GoRouteData.$location(
        '/home/${Uri.encodeComponent(accountId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QRGenPageRouteExtension on QRGenPageRoute {
  static QRGenPageRoute _fromState(GoRouterState state) => QRGenPageRoute(
        accountId: state.pathParameters['accountId']!,
      );

  String get location => GoRouteData.$location(
        '/home/${Uri.encodeComponent(accountId)}/qr-view',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingPageRoute => GoRouteData.$route(
      path: '/init',
      name: 'Onboarding',
      factory: $OnboardingPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'login',
          name: 'Login',
          factory: $LoginPageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'qr-scanner',
          name: 'QR-Scanner',
          factory: $QRPageRouteExtension._fromState,
        ),
      ],
    );

extension $OnboardingPageRouteExtension on OnboardingPageRoute {
  static OnboardingPageRoute _fromState(GoRouterState state) =>
      const OnboardingPageRoute();

  String get location => GoRouteData.$location(
        '/init',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) =>
      const LoginPageRoute();

  String get location => GoRouteData.$location(
        '/init/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QRPageRouteExtension on QRPageRoute {
  static QRPageRoute _fromState(GoRouterState state) => const QRPageRoute();

  String get location => GoRouteData.$location(
        '/init/qr-scanner',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
