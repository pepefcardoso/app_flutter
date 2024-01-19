import 'package:go_router/go_router.dart';
import 'package:my_app/screens/home_page.dart';
import 'package:my_app/screens/businesses_index.dart';
import 'package:my_app/screens/login_page.dart';
import 'package:my_app/screens/signup_page.dart';
import 'package:my_app/screens/visualizar_estabelecimento.dart';

class Routes {
  bool isLogged;

  Routes(this.isLogged);

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
                path: 'signup',
                redirect: (_, __) {
                  if (isLogged) {
                    return '/';
                  }
                  return null;
                },
                builder: (context, state) => const SignupPage(),
              ),
              GoRoute(
                path: 'businesses',
                builder: (context, state) => const BusinessesIndex(),
                routes: [
                  GoRoute(
                    path: ':index',
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
