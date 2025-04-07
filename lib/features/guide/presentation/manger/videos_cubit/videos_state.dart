part of 'videos_cubit.dart';

sealed class VideosState extends Equatable {
  const VideosState();

  @override
  List<Object> get props => [];
}

final class VideosInitial extends VideosState {}

final class VideosLoading extends VideosState {}

final class VideosSuccess extends VideosState {
  final List<GuideModel> videos;

  const VideosSuccess(this.videos);
}

final class VideosFailure extends VideosState {
  final String errorMessage;

  const VideosFailure(this.errorMessage);
}
