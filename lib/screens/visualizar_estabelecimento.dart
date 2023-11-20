import 'package:flutter/material.dart';
import 'package:my_app/components/botao_contornado.dart';
import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/models/estilo_culinario.dart';
import 'package:my_app/models/imagens_estabelecimento.dart';
import 'package:my_app/models/tipo_de_dieta.dart';
import 'package:my_app/utils/constantes.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/estabelecimentos_fake.dart';
import 'package:my_app/utils/tipografia.dart';

class VisualizarEstabelecimento extends StatefulWidget {
  // final Estabelecimento estabelecimento;
  final String index;

  const VisualizarEstabelecimento({
    super.key,
    required this.index,
  });

  @override
  State<VisualizarEstabelecimento> createState() => _VisualizarEstabelecimentoState();
}

class _VisualizarEstabelecimentoState extends State<VisualizarEstabelecimento> {
  late final int _id;
  late final Estabelecimento _estabelecimento;

  @override
  void initState() {
    super.initState();

    _id = int.parse(widget.index);

    _estabelecimento = EstabelecimentosFake.estabelecimentosFake.firstWhere((id) => _id == id.id);
  }

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
              _estabelecimento.imagens![0].url!,
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
                      _estabelecimento.nome ?? '',
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
                            _estabelecimento.nota ?? '',
                            style: Tipografia.corpo3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    _estabelecimento.tiposDeDietas![0].nome ?? '',
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
