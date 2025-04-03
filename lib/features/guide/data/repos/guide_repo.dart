import 'package:dartz/dartz.dart';
import 'package:nafas_app/core/errors/failure.dart';
import 'package:nafas_app/features/guide/data/models/videos_model/videos_model.dart';

abstract class GuideRepo {
  Future<Either<Failure, List<VideosModel>>> fetchVideos({
    required String category,
  });
}
