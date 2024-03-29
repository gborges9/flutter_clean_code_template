import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gbx_di/gbx_di.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/core/navigation/app_router.gr.dart';

import 'core/resources/theme/theme.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appDependencies});

  final Dependencies appDependencies;

  @override
  Widget build(BuildContext context) {
    return BlocDependencyProvider(
      dependencies: [appDependencies],
      builder: (context, hasLoaded) => MaterialApp.router(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', ''),
        ],
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.appTitle,
        theme: theme,
        themeMode: ThemeMode.light,
        routerDelegate: Injector.get<AppRouter>().delegate(),
        routeInformationParser: Injector.get<AppRouter>().defaultRouteParser(),
      ),
    );
  }
}
