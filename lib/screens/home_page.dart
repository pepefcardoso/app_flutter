import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/bloc/home/home_page_bloc.dart';
import 'package:my_app/components/standard_app_bar.dart';
import 'package:my_app/enum/default_bloc_status_enum.dart';
import 'package:my_app/models/blog_post.dart';
import 'package:my_app/services/blog_posts_service.dart';
import 'package:my_app/utils/custom_colors.dart';
import 'package:my_app/utils/tipografia.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final KiwiContainer _kiwiContainer = KiwiContainer();
  late final BlogPostsService _blogPostsService;
  late final HomePageBloc _homePageBloc;

  @override
  void initState() {
    super.initState();

    _blogPostsService = _kiwiContainer.resolve<BlogPostsService>();

    _homePageBloc = HomePageBloc(blogPostsService: _blogPostsService);

    _homePageBloc.add(const RequestLastBlogPost());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StandardAppBar(),
      body: SafeArea(
        child: BlocProvider.value(
          value: _homePageBloc,
          child: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              if (state.status == DefaultBlocStatusEnum.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.lastBlogPost != null) ...[
                        _BlogPostCard(blogPost: state.lastBlogPost!),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _BlogPostCard extends StatelessWidget {
  final BlogPost blogPost;

  const _BlogPostCard({required this.blogPost});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).go('/blog-posts'),
      child: SizedBox(
        height: 150.0,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 4.0,
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        bottomLeft: Radius.circular(12.0),
                      ),
                      child: Image.asset(
                        'assets/images/blog_card_1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/blog_card_2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                      child: Image.asset(
                        'assets/images/blog_card_3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                      color: CustomColors.verde2.withOpacity(0.90),
                    ),
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Confira o nosso blog',
                            style: Tipografia.titulo2,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: CustomColors.escuro,
                            size: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
