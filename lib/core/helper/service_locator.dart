import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nafas_app/core/utils/api_service.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
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
