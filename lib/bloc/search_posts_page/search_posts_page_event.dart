part of 'search_posts_page_bloc.dart';

abstract class SearchPostsPageEvent {
  const SearchPostsPageEvent();
}

class SearchPostsEvent extends SearchPostsPageEvent {
  final Map<String, dynamic>? queryParameters;

  const SearchPostsEvent({this.queryParameters});
}

class ShowFiltersEvent extends SearchPostsPageEvent {
  const ShowFiltersEvent();
}

class HideFiltersEvent extends SearchPostsPageEvent {
  const HideFiltersEvent();
}
