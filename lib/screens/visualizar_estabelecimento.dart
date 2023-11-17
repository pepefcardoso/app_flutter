import 'package:flutter/material.dart';
import 'package:my_app/components/botao_de_circulo.dart';
import 'package:my_app/components/card_prato_lista_principais.dart';
import 'package:my_app/components/imagem_perfil_estabelecimento.dart';
import 'package:my_app/components/item_lista_horizontal.dart';
import 'package:my_app/components/logo_estilizado.dart';
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
    nome: Constantes.nomesTeste[0],
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.network(
            Constantes.imagensTeste[1],
            fit: BoxFit.fitWidth,
          ),
          const _BotoesDeAcaoTopo(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Cores.verde2,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(24.0)),
                boxShadow: Sombras.sombra2,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 72.0),
                    Text(
                      _estabelecimentoLocal.nome ?? '',
                      style: Tipografia.titulo3
                          .copyWith(color: Cores.verde4),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: 32.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: ItemListaHorizontal(
                              iconePrefixo: Icons.star,
                              texto:
                                  '${_estabelecimentoLocal.nota} (${_estabelecimentoLocal.quantidadeDeAvaliacoes})',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 6.0),
                          Expanded(
                            child: ItemListaHorizontal(
                              iconePrefixo: Icons.pin_drop,
                              texto: _estabelecimentoLocal.distancia ?? '',
                              onTap: () {},
                            ),
                          ),
                          const SizedBox(width: 6.0),
                          Expanded(
                            child: ItemListaHorizontal(
                              iconePrefixo: Icons.watch_later_outlined,
                              texto: _estabelecimentoLocal.aberto!
                                  ? 'Aberto'
                                  : 'Fechado',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 8.0),
                            Text(
                              'Pratos principais',
                              style: Tipografia.titulo3,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Ver todos',
                            style: Tipografia.subtitulo2
                                .copyWith(color: Cores.verde4),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    SizedBox(
                      height: 250.0,
                      child: ListView.builder(
                        itemCount: Constantes.imagensTeste.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CardPratoListaPrincipais(
                                url: Constantes.imagensTeste[index],
                                nome: Constantes.nomesTeste[index],
                                descricao: Constantes.dietasTeste[index],
                              ),
                              if (index < Constantes.imagensTeste.length - 1)
                                const SizedBox(width: 12.0)
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.105,
            ),
            child: ImagemPerfilEstabelecimento(
              url: Constantes.imagensTeste[0],
              radius: 72.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _BotoesDeAcaoTopo extends StatelessWidget {
  const _BotoesDeAcaoTopo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 32.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BotaoDeCirculo(
            onPressed: () => Navigator.pop(context),
            icone: Icons.arrow_back,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              BotaoDeCirculo(
                onPressed: () {},
                icone: Icons.favorite,
              ),
              const SizedBox(width: 8.0),
              BotaoDeCirculo(
                onPressed: () {},
                icone: Icons.share_rounded,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
