import 'package:go_router/go_router.dart';
import 'package:my_app/screens/home_page.dart';
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
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                path: 'login',
                redirect: (_, __) {
                  if (isLogged) {
                    return '/';
                  }
                  return null;
                },
                builder: (context, state) => const LoginPage(),
              ),
              GoRoute(
                path: 'businesses',
                builder: (context, state) => const ListagemEstabelecimentos(),
                routes: [
                  GoRoute(
                    path: 'show/:index',
                    builder: (context, state) => VisualizarEstabelecimento(
                      index: state.pathParameters['index']!,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
}
