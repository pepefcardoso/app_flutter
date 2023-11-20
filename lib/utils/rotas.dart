import 'package:go_router/go_router.dart';
import 'package:my_app/screens/pagina_inicial.dart';
import 'package:my_app/screens/visualizar_estabelecimento.dart';

class Rotas {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PaginaInicial(),
        routes: [
          GoRoute(
            path: 'estabelecimento/:index',
            builder: (context, state) => VisualizarEstabelecimento(
              index: state.pathParameters['index']!,
            ),
          ),
        ],
      ),
    ],
  );
}
