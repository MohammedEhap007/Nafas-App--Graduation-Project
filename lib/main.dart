import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nafas_app/core/helper/on_generate_routes.dart';
import 'package:nafas_app/features/splash/presentation/views/splash_view.dart';
import 'package:nafas_app/generated/l10n.dart';

void main() {
  runApp(const NafasApp());
}

class NafasApp extends StatelessWidget {
  const NafasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Tajawal'),
      locale: Locale('ar'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
