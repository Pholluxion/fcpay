import 'ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'router.dart';

class FCPayApp extends StatelessWidget {
  const FCPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      dark: const AppDarkTheme().themeData,
      light: const AppTheme().themeData,
      initial: AdaptiveThemeMode.system,
      builder: (light, dark) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 960, name: TABLET),
          const Breakpoint(start: 961, end: double.infinity, name: DESKTOP),
        ],
        child: MaterialApp.router(
          theme: light,
          darkTheme: dark,
          routerConfig: router,
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('es', ''),
          ],
          onGenerateTitle: (BuildContext context) {
            return AppLocalizations.of(context)!.appTitle;
          },
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
