import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class BotaoDeCirculo extends StatelessWidget {
  final Color? corDeFundo;
  final Color? corDoIcone;
  final double? tamanho;
  final IconData? icone;
  final VoidCallback? onPressed;
  final bool? habilitado;
  final double? padding;

  const BotaoDeCirculo({
    super.key,
    this.corDeFundo,
    this.corDoIcone,
    this.tamanho = 16.0,
    this.icone,
    this.onPressed,
    this.habilitado = true,
    this.padding = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: habilitado! ? onPressed : null,
      child: CircleAvatar(
        radius: tamanho,
        backgroundColor: corDeFundo ?? Cores.claro,
        child: Padding(
          padding: EdgeInsets.all(padding!),
          child: Icon(
            icone,
            color: corDoIcone ?? Cores.verde4,
            size: tamanho,
          ),
        ),
      ),
    );
  }
}
