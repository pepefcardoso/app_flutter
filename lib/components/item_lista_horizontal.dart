import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class ItemListaHorizontal extends StatelessWidget {
  final Color? corBackground;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final BoxBorder? boxBorder;
  final IconData iconePrefixo;
  final String texto;
  final VoidCallback? onTap;

  const ItemListaHorizontal({
    super.key,
    this.corBackground,
    this.padding,
    this.borderRadius,
    this.boxBorder,
    required this.iconePrefixo,
    required this.texto,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: corBackground ?? Cores.verde4,
          borderRadius: borderRadius ?? BorderRadius.circular(8.0),
          border: boxBorder,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  iconePrefixo,
                  size: 16.0,
                  color: Cores.claro,
                ),
                const SizedBox(width: 4.0),
                Text(
                  texto,
                  style: Tipografia.subtitulo2.copyWith(color: Cores.claro),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16.0,
              color: Cores.claro,
            ),
          ],
        ),
      ),
    );
  }
}
