import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/models/estilo_culinario.dart';
import 'package:my_app/models/tipo_de_dieta.dart';
import 'package:my_app/utils/constantes.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class VisualizarEstabelecimento extends StatelessWidget {
  // final Estabelecimento estabelecimento;

  VisualizarEstabelecimento({super.key});

  final _estabelecimentoLocal = Estabelecimento(
    id: 0,
    aberto: 0 % 2 == 0,
    favorito: 0 % 2 == 0,
    nome: Constantes.nomesTeste[0],
    tiposDeDietas: [
      TipoDeDieta(id: 0, nome: Constantes.dietasTeste[0]),
    ],
    estiloCulinario: EstiloCulinario(id: 0, nome: Constantes.estilosTeste[0]),
    nota: '${0 + 1}.0',
    quantidadeDeAvaliacoes: ((0 + 1) * 110),
    distancia: '${(0 + 1) * 100} m',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.verde2,
      body: Stack(
        children: [
          Image.network(
            Constantes.imagensTeste[0],
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _estabelecimentoLocal.nome!,
                  style: Tipografia.titulo3.copyWith(
                    color: Cores.claro,
                  ),
                ),
                Text(
                  _estabelecimentoLocal.estiloCulinario!.nome!,
                  style: Tipografia.subtitulo2.copyWith(
                    color: Cores.claro,
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
