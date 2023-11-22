import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/models/estilo_culinario.dart';
import 'package:my_app/models/horario_funcionamento.dart';
import 'package:my_app/models/imagem.dart';
import 'package:my_app/models/tipo_de_dieta.dart';
import 'package:my_app/utils/constantes.dart';

class EstabelecimentosFake {
  static List<Estabelecimento> estabelecimentosFake = List.generate(
    Constantes.logosTeste.length,
    (index) {
      return Estabelecimento(
        id: index,
        descricao: Constantes.descricoesTeste[index],
        aberto: index % 2 == 0,
        favorito: index % 2 == 0,
        nome: Constantes.nomesRestaurantesTeste[index],
        tiposDeDietas: Constantes.dietasTeste.asMap().entries.map((e) {
          return TipoDeDieta(
            id: e.key,
            nome: e.value,
            principal: e.key == 0,
          );
        }).toList(),
        endereco: Constantes.enderecoTeste,
        estilosCulinarios: Constantes.estilosTeste.asMap().entries.map((e) {
          return EstiloCulinario(
            id: e.key,
            nome: e.value,
            principal: e.key == 0,
          );
        }).toList(),
        horarioFuncionamento: [
          const HorarioFuncionamento(
            id: 1,
            horaAbertura: '08:00',
            horaFechamento: '18:00',
          ),
        ],
        nota: '${index + 1}.0',
        quantidadeDeAvaliacoes: ((index + 1) * 110),
        imagens: [
          Imagem(
            id: 0,
            url: Constantes.logosTeste[index],
          ),
        ],
        logo: Imagem(
          id: 0,
          url: Constantes.logosTeste[index],
        ),
      );
    },
  );
}
