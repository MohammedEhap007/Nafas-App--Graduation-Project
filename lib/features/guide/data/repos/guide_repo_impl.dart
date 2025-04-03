import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nafas_app/core/errors/failure.dart';
import 'package:nafas_app/core/utils/api_service.dart';
import 'package:nafas_app/features/guide/data/models/videos_model/videos_model.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo.dart';

class GuideRepoImpl implements GuideRepo {
  final ApiService apiService;

  GuideRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<VideosModel>>> fetchVideos({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'Videos/$category',
      );
      List<VideosModel> videos = [];
      for (var item in data['items']) {
        videos.add(VideosModel.fromJson(item));
      }
      return right(videos);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
