import 'package:flutter/material.dart';
import 'package:my_app/components/botao_de_circulo.dart';
import 'package:my_app/components/card_prato_lista_principais.dart';
import 'package:my_app/components/imagem_perfil_estabelecimento.dart';
import 'package:my_app/components/botao_contornado.dart';
import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/models/estilo_culinario.dart';
import 'package:my_app/models/tipo_de_dieta.dart';
import 'package:my_app/utils/constantes.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/sombras.dart';
import 'package:my_app/utils/tipografia.dart';

class VisualizarEstabelecimento extends StatelessWidget {
  // final Estabelecimento estabelecimento;

  VisualizarEstabelecimento({super.key});

  final _estabelecimentoLocal = Estabelecimento(
    id: 0,
    aberto: 0 % 2 == 0,
    favorito: 0 % 2 == 0,
    nome: Constantes.nomesRestaurantesTeste[0],
    tiposDeDietas: [
      TipoDeDieta(id: 0, nome: Constantes.dietasTeste[0]),
    ],
    estiloCulinario: EstiloCulinario(id: 0, nome: Constantes.estilosTeste[0]),
    nota: '${0 + 1}.0',
    quantidadeDeAvaliacoes: ((0 + 1) * 110),
    distancia: '${(0 + 1) * 100} m',
    contatos: Constantes.contatosTeste,
    endereco: Constantes.enderecoTeste,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Cores.verde4,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              Constantes.imagensPratosTeste[1],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _estabelecimentoLocal.nome ?? '',
                      style: Tipografia.titulo2.copyWith(color: Cores.verde4),
                    ),
                    BotaoContornado(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 18.0,
                            color: Cores.escuro,
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            _estabelecimentoLocal.nota ?? '',
                            style: Tipografia.subtitulo2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    _estabelecimentoLocal.tiposDeDietas![0]!.nome ?? '',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
