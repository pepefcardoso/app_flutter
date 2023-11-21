import 'package:flutter/material.dart';
import 'package:my_app/utils/tipografia.dart';

class TextoFormatado extends StatelessWidget {
  final String texto;
  final TextStyle? estilo;

  const TextoFormatado({
    super.key,
    this.texto = '',
    this.estilo,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        texto,
        style: estilo ?? Tipografia.corpo2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
