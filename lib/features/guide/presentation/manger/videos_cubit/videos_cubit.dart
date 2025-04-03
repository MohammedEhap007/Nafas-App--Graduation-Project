import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo.dart';

import '../../../data/models/videos_model/videos_model.dart';

part 'videos_state.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit(this.guideRepo) : super(VideosInitial());
  final GuideRepo guideRepo;

  Future<void> fetchVideos({required String category}) async {
    emit(VideosLoading());
    var result = await guideRepo.fetchVideos(category: category);
    result.fold(
      (failure) {
        emit(
          VideosFailure(failure.errorMessage),
        );
      },
      (videos) {
        emit(
          VideosSuccess(videos),
        );
      },
    );
  }
}
