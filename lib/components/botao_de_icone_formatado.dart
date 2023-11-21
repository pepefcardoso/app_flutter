import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class BotaoDeIconeFormatado extends StatelessWidget {
  final double tamanho;
  final IconData icone;
  final Color? cor;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;

  const BotaoDeIconeFormatado({
    super.key,
    this.tamanho = 18.0,
    this.icone = Icons.construction,
    this.cor,
    this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding ?? const EdgeInsets.all(0.0),
      width: tamanho,
      height: tamanho,
      padding: const EdgeInsets.all(0.0),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icone,
          color: cor ?? Cores.verde3,
          size: tamanho,
        ),
        constraints: const BoxConstraints(),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
