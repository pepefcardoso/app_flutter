import 'package:flutter/material.dart';
import 'package:my_app/components/logo_estilizado.dart';
import 'package:my_app/components/nota_com_avaliacoes.dart';
import 'package:my_app/models/estabelecimento.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class CardEstabelecimento extends StatelessWidget {
  final Estabelecimento estabelecimento;
  final VoidCallback onTap;

  const CardEstabelecimento({
    super.key,
    required this.estabelecimento,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                LogoEstilizado(
                  largura: 80.0,
                  url: (estabelecimento.imagens?.isNotEmpty ?? false)
                      ? estabelecimento.imagens![0].fotosUrl![0]!
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
                          Text(
                            (estabelecimento.nome ?? ''),
                            style: Tipografia.corpo1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Icon(
                            (estabelecimento.favorito ?? false)
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            size: 18.0,
                            color: Cores.verde3,
                          ),
                        ],
                      ),
                      for (final dieta in estabelecimento.tiposDeDietas ?? [])
                        Text(
                          dieta.nome,
                          style: Tipografia.subtitulo1,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                estabelecimento.estiloCulinario?.nome ?? '',
                                style: Tipografia.subtitulo1,
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
                                (estabelecimento.aberto ?? false)
                                    ? 'Aberto'
                                    : 'Fechado',
                                style: Tipografia.subtitulo1,
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
                                estabelecimento.distancia ?? '',
                                style: Tipografia.subtitulo1,
                              ),
                            ],
                          ),
                          NotaComAvaliacoes(
                            nota: estabelecimento.nota?.toString(),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
