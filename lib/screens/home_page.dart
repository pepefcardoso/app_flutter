import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/bloc/home/home_page_bloc.dart';
import 'package:my_app/components/botao_de_icone_formatado.dart';
import 'package:my_app/components/standard_app_bar.dart';
import 'package:my_app/enum/default_bloc_status_enum.dart';
import 'package:my_app/models/blog_post.dart';
import 'package:my_app/services/blog_posts_service.dart';
import 'package:my_app/utils/cores.dart';
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
                      BotaoDeIconeFormatado(
                        icone: Icons.restaurant,
                        cor: Cores.verde1,
                        onPressed: () => GoRouter.of(context).go('/businesses'),
                      ),
                      const SizedBox(height: 32.0),
                      if (state.lastBlogPost != null) ...[
                        const Text(
                          'Confira o nosso blog',
                          style: Tipografia.titulo3,
                        ),
                        const SizedBox(height: 12.0),
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
      onTap: () => GoRouter.of(context).go(
        '/blog-posts/${blogPost.id}',
      ),
      child: SizedBox(
        height: 120.0,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          surfaceTintColor: Cores.verde1,
          elevation: 4.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    bottomLeft: Radius.circular(16.0),
                  ),
                  child: Image.network(
                    blogPost.image!.url!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    blogPost.title ?? '',
                    style: Tipografia.titulo2,
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
