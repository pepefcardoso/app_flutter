import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class CardEstabelecimento extends StatelessWidget {
  final String urlImagem;
  final String nome;
  final String avaliacao;
  final String distancia;
  final int nAvaliacoes;
  final String dieta;
  final String estilo;

  const CardEstabelecimento({
    super.key,
    required this.urlImagem,
    required this.nome,
    required this.avaliacao,
    required this.distancia,
    required this.nAvaliacoes,
    required this.dieta,
    required this.estilo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 6.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                width: 110.0,
                height: 110.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2.0,
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    urlImagem,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nome,
                      style: Tipografia.corpo1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      dieta,
                      style: Tipografia.subtitulo1,
                    ),
                    Text(
                      estilo,
                      style: Tipografia.subtitulo1,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Cores.verde3,
                          size: 16.0,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          avaliacao,
                          style: Tipografia.subtitulo1,
                        ),
                        const SizedBox(width: 4.0),
                        Text(
                          '($nAvaliacoes avaliações)',
                          style: Tipografia.subtitulo1,
                        ),
                      ],
                    ),
                    Text(
                      distancia,
                      style: Tipografia.subtitulo1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
