import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:groupup/core/routes/gu_routes.dart';
import 'package:groupup/core/theme/theme_data.dart';
import 'package:groupup/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  App({super.key}) {
    _initialization();
  }

  Future<void> _initialization() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final systemUiOverlayStyle =
        GUTheme.defaultTheme.appBarTheme.systemOverlayStyle;
    if (systemUiOverlayStyle != null) {
      SystemChrome.setSystemUIOverlayStyle(
        systemUiOverlayStyle,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'groupup',
      onGenerateRoute: GURoute.generateRoute,
      supportedLocales: L10n.all,
      locale: const Locale('pt'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // initialRoute: GUNamedRoutes.mainPage,
    );
  }
}
