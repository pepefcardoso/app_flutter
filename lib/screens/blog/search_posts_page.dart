import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/bloc/search_posts_page/search_posts_page_bloc.dart';
import 'package:my_app/components/custom_icon_card_button.dart';
import 'package:my_app/components/custom_text_formfield.dart';
import 'package:my_app/models/blog_post.dart';
import 'package:my_app/screens/blog/posts_list_item.dart';
import 'package:my_app/services/blog_posts_service.dart';
import 'package:my_app/utils/custom_colors.dart';
import 'package:my_app/utils/tipografia.dart';

class SearchPostsPage extends StatefulWidget {
  const SearchPostsPage({super.key});

  @override
  State<SearchPostsPage> createState() => _SearchPostsPageState();
}

class _SearchPostsPageState extends State<SearchPostsPage> {
  final TextEditingController _wordController = TextEditingController();
  final KiwiContainer _kiwi = KiwiContainer();
  late final BlogPostsService _service;
  late final SearchPostsPageBloc _bloc;

  @override
  void initState() {
    super.initState();

    _service = _kiwi.resolve<BlogPostsService>();

    _bloc = SearchPostsPageBloc(_service);
    _bloc.add(const SearchPosts());

    _wordController.addListener(() {
      _bloc.add(SearchPosts(
        queryParameters: {'title': _wordController.text},
      ));
    });
  }

  @override
  void dispose() {
    _wordController.dispose();

    super.dispose();
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
        actions: _buildActions(),
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<SearchPostsPageBloc, SearchPostsPageState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    controller: _wordController,
                    hintText: 'Digite o que deseja pesquisar',
                    icon: Icons.search,
                  ),
                  const SizedBox(height: 16.0),
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.posts.length,
                      itemBuilder: (context, index) {
                        final BlogPost post = state.posts[index];

                        return PostsItemList(
                          post: post,
                          color: CustomColors.randomColors[index % CustomColors.randomColors.length],
                          router: () => GoRouter.of(context).go(
                            '/blog-posts/search/${post.id}',
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildActions() {
    return [
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: CustomIconCardButton(
                onPressed: () => GoRouter.of(context).pop(),
              ),
            ),
            const Text(
              'Pesquisar',
              style: Tipografia.titulo4,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: CustomIconCardButton(
                onPressed: () {},
                icon: Icons.filter_list,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
