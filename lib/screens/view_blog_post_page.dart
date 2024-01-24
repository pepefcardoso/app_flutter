import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/bloc/view_blog_post/view_blog_post_bloc.dart';
import 'package:my_app/components/standard_app_bar.dart';
import 'package:my_app/enum/default_bloc_status_enum.dart';
import 'package:my_app/services/blog_posts_service.dart';
import 'package:my_app/utils/cores.dart';

class ViewBlogPostPage extends StatefulWidget {
  final int id;

  const ViewBlogPostPage({
    super.key,
    required this.id,
  });

  @override
  State<ViewBlogPostPage> createState() => _ViewBlogPostPageState();
}

class _ViewBlogPostPageState extends State<ViewBlogPostPage> {
  final KiwiContainer _kiwiContainer = KiwiContainer();
  late final BlogPostsService _blogPostsService;
  late final ViewBlogPostBloc _viewBlogPostBloc;

  @override
  void initState() {
    super.initState();

    _blogPostsService = _kiwiContainer.resolve<BlogPostsService>();

    _viewBlogPostBloc = ViewBlogPostBloc(blogPostsService: _blogPostsService);

    _viewBlogPostBloc.add(RequestBlogPost(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StandardAppBar(),
      body: BlocProvider.value(
        value: _viewBlogPostBloc,
        child: BlocBuilder<ViewBlogPostBloc, ViewBlogPostState>(
          builder: (context, state) {
            if (state.status == DefaultBlocStatusEnum.loading || state.blogPost == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        state.blogPost!.image!.url!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Cores.verde2,
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Material(
                        elevation: 6.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: MediaQuery.of(context).size.height * 0.52,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
