import 'package:flutter/material.dart';
import 'package:my_app/components/card_de_imagem.dart';
import 'package:my_app/components/nota_com_avaliacoes.dart';
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
      height: 120.0,
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardDeImagem(
              largura: 120.0,
              url: (estabelecimento.imagens?.isNotEmpty ?? false) ? estabelecimento.imagens![0].url! : '',
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        (estabelecimento.nome ?? ''),
                        style: Tipografia.titulo2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          (estabelecimento.favorito ?? false) ? Icons.favorite : Icons.favorite_border_outlined,
                          color: Cores.verde3,
                          size: 20.0,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      for (final dieta in estabelecimento.tiposDeDietas ?? [])
                        Text(
                          dieta.nome,
                          style: Tipografia.corpo3,
                        ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        estabelecimento.estiloCulinario?.nome ?? '',
                        style: Tipografia.corpo3,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(
                          Icons.circle,
                          size: 4.0,
                          color: Cores.verde3,
                        ),
                      ),
                      Text(
                        (estabelecimento.aberto ?? false) ? 'Aberto' : 'Fechado',
                        style: Tipografia.corpo3,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Icon(
                          Icons.circle,
                          size: 4.0,
                          color: Cores.verde3,
                        ),
                      ),
                      Text(
                        estabelecimento.endereco?.cidade ?? '',
                        style: Tipografia.corpo3,
                      ),
                    ],
                  ),
                  const Spacer(),
                  NotaComIcone(
                    nota: estabelecimento.nota?.toString(),
                    quantidadeDeAvaliacoes: estabelecimento.quantidadeDeAvaliacoes,
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
