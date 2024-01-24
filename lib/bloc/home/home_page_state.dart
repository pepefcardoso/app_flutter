part of 'home_page_bloc.dart';

@immutable
class HomePageState {
  final DefaultBlocStatusEnum status;
  final BlogPost? lastBlogPost;
  final String? error;

  const HomePageState({
    this.status = DefaultBlocStatusEnum.initial,
    this.lastBlogPost,
    this.error,
  });

  HomePageState copyWith({
    DefaultBlocStatusEnum? status,
    BlogPost? lastBlogPost,
    String? error,
  }) {
    return HomePageState(
      status: status ?? this.status,
      lastBlogPost: lastBlogPost ?? this.lastBlogPost,
      error: error ?? this.error,
    );
  }
}
