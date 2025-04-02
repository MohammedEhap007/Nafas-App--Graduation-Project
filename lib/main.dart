import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nafas_app/core/helper/on_generate_routes.dart';
import 'package:nafas_app/core/services/shared_preferences_singleton.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/savings_counter/data/models/savings_counter_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';
import 'package:nafas_app/features/splash/presentation/views/splash_view.dart';
import 'package:nafas_app/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  await Hive.initFlutter();
  Hive.registerAdapter(SavingsCounterModelAdapter());
  await Hive.openBox<SavingsCounterModel>('savingsBox');
  runApp(const NafasApp());
}

class NafasApp extends StatelessWidget {
  const NafasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SavingsCounterCubit(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Tajawal',
          scaffoldBackgroundColor: AppColors.primaryBackgroundColor,
        ),
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
      ),
    );
  }
}
