part of 'search_posts_page_bloc.dart';

@immutable
class SearchPostsPageState {
  final DefaultBlocStatusEnum status;
  final List<BlogPost> posts;
  final bool showFilters;
  final String? error;

  const SearchPostsPageState({
    this.status = DefaultBlocStatusEnum.initial,
    this.posts = const [],
    this.showFilters = false,
    this.error,
  });

  SearchPostsPageState copyWith({
    DefaultBlocStatusEnum? status,
    List<BlogPost>? posts,
    bool? showFilters,
    String? error,
  }) {
    return SearchPostsPageState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      showFilters: showFilters ?? this.showFilters,
      error: error ?? this.error,
    );
  }
}
