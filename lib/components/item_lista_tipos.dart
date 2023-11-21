import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class ItemListaTipos extends StatelessWidget {
  final String? tipo;
  final EdgeInsets? padding;
  final Color? cor;

  const ItemListaTipos({
    super.key,
    this.tipo,
    this.padding,
    this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 12.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: cor ?? Cores.verde2,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        tipo ?? '',
        style: Tipografia.corpo2Bold,
      ),
    );
  }
}
