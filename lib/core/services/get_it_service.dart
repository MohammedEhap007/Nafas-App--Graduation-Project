import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nafas_app/core/services/api_service.dart';
import 'package:nafas_app/core/services/firebase_auth_service.dart';
import 'package:nafas_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:nafas_app/features/auth/domain/repos/auth_repo.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo_impl.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
    ),
  );

  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<GuideRepoImpl>(
    GuideRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
}
