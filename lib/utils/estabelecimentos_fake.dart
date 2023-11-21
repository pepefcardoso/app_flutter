import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/models/estilo_culinario.dart';
import 'package:my_app/models/imagens_estabelecimento.dart';
import 'package:my_app/models/tipo_de_dieta.dart';
import 'package:my_app/utils/constantes.dart';

class EstabelecimentosFake {
  static List<Estabelecimento> estabelecimentosFake = List.generate(
    Constantes.logosTeste.length,
    (index) {
      return Estabelecimento(
        id: index,
        aberto: index % 2 == 0,
        favorito: index % 2 == 0,
        nome: Constantes.nomesRestaurantesTeste[index],
        tiposDeDietas: [
          TipoDeDieta(id: 0, nome: Constantes.dietasTeste[index]),
        ],
        endereco: Constantes.enderecoTeste,
        estilosCulinarios: [
          EstiloCulinario(
              id: 0, nome: Constantes.estilosTeste[index]),
        ],
        nota: '${index + 1}.0',
        quantidadeDeAvaliacoes: ((index + 1) * 110),
        distancia: '${(index + 1) * 100} m',
        imagens: [
          ImagemDoEstabelecimento(
            id: 0,
            url: Constantes.logosTeste[index],
          ),
        ],
      );
    },
  );
}
