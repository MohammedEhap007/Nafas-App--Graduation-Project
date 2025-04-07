part of 'blogs_cubit.dart';

sealed class BlogsState extends Equatable {
  const BlogsState();

  @override
  List<Object> get props => [];
}

final class BlogsInitial extends BlogsState {}

final class BlogsLoading extends BlogsState {}

final class BlogsSuccess extends BlogsState {
  final List<GuideModel> blogs;

  const BlogsSuccess(this.blogs);
}

final class BlogsFailure extends BlogsState {
  final String errorMessage;

  const BlogsFailure(this.errorMessage);
}
