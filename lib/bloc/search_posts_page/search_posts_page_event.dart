part of 'search_posts_page_bloc.dart';

abstract class SearchPostsPageEvent {
  const SearchPostsPageEvent();
}

class SearchPosts extends SearchPostsPageEvent {
  final Map<String, dynamic>? queryParameters;

  const SearchPosts({this.queryParameters});
}
