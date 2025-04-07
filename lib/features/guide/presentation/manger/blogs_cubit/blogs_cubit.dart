import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/guide_model/guide_model.dart';
import '../../../data/repos/guide_repo.dart';

part 'blogs_state.dart';

class BlogsCubit extends Cubit<BlogsState> {
  BlogsCubit(this.guideRepo) : super(BlogsInitial());
  final GuideRepo guideRepo;

  Future<void> fetchBlogs({ String category = 'About'}) async {
    emit(BlogsLoading());
    var result = await guideRepo.fetchBlogs(category: category);
    result.fold(
      (failure) {
        emit(
          BlogsFailure(failure.errorMessage),
        );
      },
      (videos) {
        emit(
          BlogsSuccess(videos),
        );
      },
    );
  }
}
