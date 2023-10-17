import 'package:go_router/go_router.dart';
import 'package:my_app/screens/onboarding_page.dart';
import 'package:my_app/screens/pagina_inicial.dart';

class Rotas {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingPage(),
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const PaginaInicial(),
          ),
        ],
      ),
    ],
  );
}