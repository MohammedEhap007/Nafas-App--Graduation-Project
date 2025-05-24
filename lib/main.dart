import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nafas_app/core/helper/on_generate_routes.dart';
import 'package:nafas_app/core/services/get_it_service.dart';
import 'package:nafas_app/core/services/shared_preferences_singleton.dart';
import 'package:nafas_app/core/utils/app_colors.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo_impl.dart';
import 'package:nafas_app/features/guide/presentation/manger/blogs_cubit/blogs_cubit.dart';
import 'package:nafas_app/features/guide/presentation/manger/videos_cubit/videos_cubit.dart';
import 'package:nafas_app/features/savings_counter/data/models/savings_counter_model.dart';
import 'package:nafas_app/features/savings_counter/presentation/manger/savings_counter_cubit/savings_counter_cubit.dart';
import 'package:nafas_app/features/splash/presentation/views/splash_view.dart';
import 'package:nafas_app/firebase_options.dart';
import 'package:nafas_app/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Prefs.init();
  await Hive.initFlutter();
  Hive.registerAdapter(SavingsCounterModelAdapter());
  await Hive.openBox<SavingsCounterModel>('savingsBox');
  setupGetIt();
  runApp(const NafasApp());
}

class NafasApp extends StatelessWidget {
  const NafasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SavingsCounterCubit(),
        ),
        BlocProvider(
          create: (context) => VideosCubit(
            getIt.get<GuideRepoImpl>(),
          )..fetchVideos(category: 'About'),
        ),
        BlocProvider(
          create: (context) => BlogsCubit(
            getIt.get<GuideRepoImpl>(),
          )..fetchBlogs(category: 'About'),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Tajawal',
          scaffoldBackgroundColor: AppColors.primaryBackgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
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
