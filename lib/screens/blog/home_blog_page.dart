import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/bloc/home_blog/home_blog_page_bloc.dart';
import 'package:my_app/components/custom_icon_card_button.dart';
import 'package:my_app/components/custom_image_card.dart';
import 'package:my_app/components/custom_text.dart';
import 'package:my_app/components/post_categories_list.dart';
import 'package:my_app/enum/default_bloc_status_enum.dart';
import 'package:my_app/models/blog_post.dart';
import 'package:my_app/services/blog_posts_service.dart';
import 'package:my_app/utils/custom_colors.dart';
import 'package:my_app/utils/tipografia.dart';

class HomeBlogPage extends StatefulWidget {
  const HomeBlogPage({super.key});

  @override
  State<HomeBlogPage> createState() => _HomeBlogPageState();
}

class _HomeBlogPageState extends State<HomeBlogPage> {
  final KiwiContainer _kiwi = KiwiContainer();
  late final HomeBlogPageBloc _bloc;
  late final BlogPostsService _service;

  @override
  void initState() {
    super.initState();

    _service = _kiwi.resolve<BlogPostsService>();

    _bloc = HomeBlogPageBloc(_service);

    _bloc.add(const RequestPosts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 6.0,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        actions: [
          const SizedBox(width: 12.0),
          CustomIconCardButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          const Spacer(),
          const Text(
            'Blog Leve Sabor',
            style: Tipografia.titulo4,
          ),
          const Spacer(),
          CustomIconCardButton(
            onPressed: () {},
            icon: Icons.search,
          ),
          const SizedBox(width: 12.0),
        ],
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<HomeBlogPageBloc, HomeBlogPageState>(
          builder: (context, state) {
            if (state.status == DefaultBlocStatusEnum.loading || state.posts.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final BlogPost post = state.posts[index];

                  return _PostsItemList(
                    post: post,
                    color: CustomColors.randomColors[index % CustomColors.randomColors.length],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PostsItemList extends StatelessWidget {
  final BlogPost post;
  final Color color;

  const _PostsItemList({
    required this.post,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: InkWell(
        onTap: () => GoRouter.of(context).go('/blog-posts/${post.id}'),
        child: Card(
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 4.0,
          child: Stack(
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                    ),
                    color: color.withOpacity(0.4)),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CustomImageCard(url: post.image!.url!),
                    const SizedBox(width: 12.0),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: post.title!,
                          ),
                          PostCategoriesList(
                            post: post,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
