import 'package:flutter/material.dart';
import 'package:my_app/components/logo_estilizado.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/sombras.dart';
import 'package:my_app/utils/tipografia.dart';

class CardPratoListaPrincipais extends StatelessWidget {
  final String url;
  final String nome;
  final String descricao;

  const CardPratoListaPrincipais({
    super.key,
    required this.url,
    required this.nome,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CardDeImagem(
          url: url,
          largura: 250,
          sombra: const [],
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.0), boxShadow: Sombras.sombra1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              nome,
                              style: Tipografia.titulo3.copyWith(color: Cores.escuro),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  descricao,
                                  style: Tipografia.subtitulo3.copyWith(
                                    color: Cores.escuro.withOpacity(0.9),
                                  ),
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite_border_outlined),
                                  color: Colors.red,
                                  iconSize: 16.0,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
