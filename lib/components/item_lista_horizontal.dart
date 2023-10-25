import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class ItemListaHorizontal extends StatelessWidget {
  final Color? corBackground;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final BoxBorder? boxBorder;
  final Widget child;
  final VoidCallback? onTap;

  const ItemListaHorizontal({
    super.key,
    this.corBackground,
    this.padding,
    this.borderRadius,
    this.boxBorder,
    required this.child,
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
        child: child,
      ),
    );
  }
}
