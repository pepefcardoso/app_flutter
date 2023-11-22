import 'package:go_router/go_router.dart';
import 'package:my_app/screens/listagem_estabelecimentos.dart';
import 'package:my_app/screens/visualizar_estabelecimento.dart';

class Rotas {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ListagemEstabelecimentos(),
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
