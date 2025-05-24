import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:nafas_app/core/errors/failure.dart';
import 'package:nafas_app/core/services/api_service.dart';
import 'package:nafas_app/features/guide/data/models/guide_model/guide_model.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo.dart';

class GuideRepoImpl implements GuideRepo {
  final ApiService apiService;

  GuideRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<GuideModel>>> fetchVideos({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'Videos/$category',
      );
      List<GuideModel> videos = [];
      for (var video in data) {
        videos.add(GuideModel.fromJson(video));
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

  @override
  Future<Either<Failure, List<GuideModel>>> fetchBlogs({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'Blogs/$category',
      );
      List<GuideModel> blogs = [];
      for (var video in data) {
        blogs.add(GuideModel.fromJson(video));
      }
      return right(blogs);
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
