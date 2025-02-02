import 'package:flutter/material.dart';
import 'package:nafas_app/core/helper/on_generate_routes.dart';
import 'package:nafas_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const NafasApp());
}

class NafasApp extends StatelessWidget {
  const NafasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
