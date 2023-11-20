import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class NotaComIcone extends StatelessWidget {
  final String? nota;
  final int? quantidadeDeAvaliacoes;

  const NotaComIcone({
    super.key,
    required this.nota,
    required this.quantidadeDeAvaliacoes,
  });

  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto1 = Tipografia.corpo1;
    const TextStyle estiloTexto2 = Tipografia.corpo2;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.star,
          color: Cores.verde3,
          size: estiloTexto1.fontSize! + 2,
        ),
        const SizedBox(width: 4.0),
        Text(
          nota ?? '',
          style: estiloTexto1,
        ),
        const SizedBox(width: 4.0),
        Text(
          '(${quantidadeDeAvaliacoes?.toString() ?? ''})',
          style: estiloTexto2,
        ),
      ],
    );
  }
}
