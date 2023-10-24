import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class NotaComAvaliacoes extends StatelessWidget {
  final String? nota;
  final int? quantidadeDeAvaliacoes;
  final Color? corEstrela;
  final double? tamanhoEstrela;
  final double? espacamento;
  final TextStyle? estiloTexto;

  const NotaComAvaliacoes({
    super.key,
    this.nota,
    this.quantidadeDeAvaliacoes,
    this.corEstrela,
    this.tamanhoEstrela,
    this.espacamento,
    this.estiloTexto,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: corEstrela ?? Cores.verde3,
          size: tamanhoEstrela ?? 16.0,
        ),
        SizedBox(width: espacamento ?? 4.0),
        if (nota != null) ...[
          SizedBox(width: espacamento ?? 4.0),
          Text(
            nota ?? '',
            style: estiloTexto ?? Tipografia.subtitulo1,
          ),
        ],
        if (quantidadeDeAvaliacoes != null) ...[
          SizedBox(width: espacamento ?? 4.0),
          Text(
            '(${quantidadeDeAvaliacoes?.toString() ?? ''})',
            style: estiloTexto ?? Tipografia.subtitulo1,
          ),
        ],
      ],
    );
  }
}
