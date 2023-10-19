import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/home/cubit/home_cubit.dart';
import 'ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'router.dart';

class FCPayApp extends StatelessWidget {
  const FCPayApp({
    super.key,
    required this.sharedPreferences,
  });

  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => sharedPreferences,
      child: ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 500, name: MOBILE),
          const Breakpoint(start: 501, end: 960, name: TABLET),
          const Breakpoint(start: 961, end: double.infinity, name: DESKTOP),
        ],
        child: const MateApp(),
      ),
    );
  }
}

class MateApp extends StatelessWidget {
  const MateApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context.read<SharedPreferences>()),
      child: MaterialApp.router(
        themeMode: ThemeMode.light,
        darkTheme: const AppDarkTheme().themeData,
        theme: const AppTheme().themeData,
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
    );
  }
}
