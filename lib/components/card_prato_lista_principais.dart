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
      children: [
        LogoEstilizado(
          url: url,
          largura: 250,
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
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: Sombras.sombra1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nome,
                              style:
                                  Tipografia.subtitulo2.copyWith(color: Cores.verde4),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              descricao,
                              style:
                                  Tipografia.subtitulo2.copyWith(color: Cores.verde4),
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
