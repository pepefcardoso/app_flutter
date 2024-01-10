import 'package:go_router/go_router.dart';
import 'package:my_app/screens/listagem_estabelecimentos.dart';
import 'package:my_app/screens/login_page.dart';
import 'package:my_app/screens/visualizar_estabelecimento.dart';

class Rotas {
  bool isLogged;

  Rotas(this.isLogged);

  GoRouter get router => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            redirect: (_, __) {
              if (isLogged) {
                return '/lista-estabelecimentos';
              } else {
                return '/';
              }
            },
            builder: (context, state) => const LoginPage(),
          ),
          GoRoute(
            path: '/lista-estabelecimentos',
            builder: (context, state) => const ListagemEstabelecimentos(),
          ),
          GoRoute(
            path: '/visualizar/:index',
            builder: (context, state) => VisualizarEstabelecimento(
              index: state.pathParameters['index']!,
            ),
          ),
        ],
      );
}
