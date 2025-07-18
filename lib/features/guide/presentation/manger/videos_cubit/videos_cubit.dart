import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nafas_app/features/guide/data/repos/guide_repo.dart';

import '../../../data/models/guide_model/guide_model.dart';

part 'videos_state.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit(this.guideRepo) : super(VideosInitial());
  final GuideRepo guideRepo;
  String category = '';
  int selectedIndex = 0;

  Future<void> fetchVideos({String category = 'About'}) async {
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
