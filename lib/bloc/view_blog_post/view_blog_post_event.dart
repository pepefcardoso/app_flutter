part of 'view_blog_post_bloc.dart';

abstract class ViewBlogPostEvent {
  const ViewBlogPostEvent();
}

class RequestBlogPost extends ViewBlogPostEvent {
  final int id;

  const RequestBlogPost({
    required this.id,
  });
}

class RequestFavoriteBlogPost extends ViewBlogPostEvent {
  final int id;

  const RequestFavoriteBlogPost({
    required this.id,
  });
}

class RequestUnfavoriteBlogPost extends ViewBlogPostEvent {
  final int id;

  const RequestUnfavoriteBlogPost({
    required this.id,
  });
}
