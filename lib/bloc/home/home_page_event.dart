part of 'home_page_bloc.dart';

abstract class HomePageEvent {
  const HomePageEvent();
}

class RequestLastBlogPost extends HomePageEvent {
  const RequestLastBlogPost();
}
