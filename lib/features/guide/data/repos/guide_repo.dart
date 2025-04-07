import 'package:dartz/dartz.dart';
import 'package:nafas_app/core/errors/failure.dart';
import 'package:nafas_app/features/guide/data/models/guide_model/guide_model.dart';

abstract class GuideRepo {
  Future<Either<Failure, List<GuideModel>>> fetchVideos({
    required String category,
  });
  Future<Either<Failure, List<GuideModel>>> fetchBlogs({
    required String category,
  });
}
