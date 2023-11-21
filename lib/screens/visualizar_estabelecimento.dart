import 'package:flutter/material.dart';
import 'package:my_app/components/botao_contornado.dart';
import 'package:my_app/components/botao_de_icone_formatado.dart';
import 'package:my_app/components/item_lista_tipos.dart';
import 'package:my_app/components/texto_formatado.dart';
import 'package:my_app/models/estabelecimento.dart';
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
  State<VisualizarEstabelecimento> createState() =>
      _VisualizarEstabelecimentoState();
}

class _VisualizarEstabelecimentoState extends State<VisualizarEstabelecimento> {
  late final int _id;
  late final Estabelecimento _estabelecimento;

  @override
  void initState() {
    super.initState();

    _id = int.parse(widget.index);

    _estabelecimento = EstabelecimentosFake.estabelecimentosFake
        .firstWhere((id) => _id == id.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Cores.verde3,
        actions: [
          BotaoDeIconeFormatado(
            icone: Icons.share,
            cor: Cores.verde3,
            onPressed: () => debugPrint('Compartilhar'),
            tamanho: 24.0,
            padding: const EdgeInsets.only(right: 12.0),
          ),
          BotaoDeIconeFormatado(
            icone: Icons.favorite_border_outlined,
            cor: Cores.verde3,
            onPressed: () => debugPrint('Favoritar'),
            tamanho: 24.0,
            padding: const EdgeInsets.only(right: 16.0),
          ),
        ],
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
                    TextoFormatado(
                      texto: _estabelecimento.nome ?? '',
                      estilo: Tipografia.titulo3,
                    ),
                    BotaoContornado(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      onTap: () => debugPrint('Ver avaliações'),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 18.0,
                            color: Cores.verde3,
                          ),
                          const SizedBox(width: 4.0),
                          TextoFormatado(
                            texto: _estabelecimento.nota ?? '',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 32.0,
                  child: ListView.builder(
                    itemCount: _estabelecimento.tiposDeDietas?.length ?? 0,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final dieta = _estabelecimento.tiposDeDietas?[index];

                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ItemListaTipos(
                            tipo: dieta?.nome,
                          ),
                          if (index <
                              _estabelecimento.tiposDeDietas!.length - 1)
                            const SizedBox(width: 8.0),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: 32.0,
                  child: ListView.builder(
                    itemCount: _estabelecimento.estilosCulinarios?.length ?? 0,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final dieta = _estabelecimento.estilosCulinarios?[index];

                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ItemListaTipos(
                            tipo: dieta?.nome,
                          ),
                          if (index <
                              _estabelecimento.estilosCulinarios!.length - 1)
                            const SizedBox(width: 8.0),
                        ],
                      );
                    },
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
