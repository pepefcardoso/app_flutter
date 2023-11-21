import 'package:flutter/material.dart';
import 'package:my_app/components/botao_de_icone_formatado.dart';
import 'package:my_app/components/card_de_imagem.dart';
import 'package:my_app/components/nota_com_avaliacoes.dart';
import 'package:my_app/components/texto_formatado.dart';
import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class ItemListaEstabelecimentos extends StatelessWidget {
  final Estabelecimento estabelecimento;
  final VoidCallback onTap;

  const ItemListaEstabelecimentos({
    super.key,
    required this.estabelecimento,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.0,
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardDeImagem(
              largura: 125.0,
              url: (estabelecimento.imagens?.isNotEmpty ?? false)
                  ? estabelecimento.imagens![0].url!
                  : '',
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
                        texto: (estabelecimento.nome ?? ''),
                        estilo: Tipografia.titulo2,
                      ),
                      BotaoDeIconeFormatado(
                        icone: (estabelecimento.favorito ?? false)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        onPressed: () => debugPrint('Favoritou'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (final dieta
                          in estabelecimento.tiposDeDietasPrincipais ?? [])
                        TextoFormatado(
                          texto: dieta.nome,
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      for (final estilo
                          in estabelecimento.estilosCulinariosPrincipais ?? [])
                        TextoFormatado(
                          texto: estilo.nome,
                        ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextoFormatado(
                        texto: (estabelecimento.aberto ?? false)
                            ? 'Aberto'
                            : 'Fechado',
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(
                          Icons.circle,
                          size: 4.0,
                          color: Cores.verde3,
                        ),
                      ),
                      TextoFormatado(
                        texto: estabelecimento.endereco?.cidade ?? '',
                      ),
                    ],
                  ),
                  NotaComIcone(
                    nota: estabelecimento.nota?.toString(),
                    quantidadeDeAvaliacoes:
                        estabelecimento.quantidadeDeAvaliacoes,
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
