import 'package:flutter/material.dart';
import 'package:my_app/components/botao_de_icone_formatado.dart';
import 'package:my_app/components/card_de_imagem.dart';
import 'package:my_app/components/nota_com_avaliacoes.dart';
import 'package:my_app/components/texto_formatado.dart';
import 'package:my_app/models/business.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class ItemListaEstabelecimentos extends StatelessWidget {
  final Business estabelecimento;
  final VoidCallback onTap;

  const ItemListaEstabelecimentos({
    super.key,
    required this.estabelecimento,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.0,
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                CardDeImagem(
                  largura: 130.0,
                  url: (estabelecimento.images?.isNotEmpty ?? false) ? estabelecimento.images![0].url! : '',
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Cores.verde2.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    estabelecimento.openNow ?? false ? 'Aberto' : 'Fechado',
                    style: Tipografia.corpo2Bold,
                  ),
                )
              ],
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextoFormatado(
                        texto: (estabelecimento.name ?? ''),
                        estilo: Tipografia.titulo2,
                      ),
                      BotaoDeIconeFormatado(
                        icone: (estabelecimento.favorite ?? false) ? Icons.favorite : Icons.favorite_border_outlined,
                        onPressed: () => debugPrint('Favoritou'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (final dieta in estabelecimento.diets ?? [])
                        TextoFormatado(
                          texto: dieta.nome,
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      for (final estilo in estabelecimento.cookingStyles ?? [])
                        TextoFormatado(
                          texto: estilo.nome,
                        ),
                    ],
                  ),
                  TextoFormatado(
                    texto: estabelecimento.address?.city ?? '',
                  ),
                  NotaComIcone(
                    nota: estabelecimento.ratingsInfo?.average?.toString(),
                    quantidadeDeAvaliacoes: estabelecimento.ratingsInfo?.count,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
