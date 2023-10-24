import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class ItemListaHorizontal extends StatelessWidget {
  final Color corBackground;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final BoxBorder? boxBorder;
  final Widget child;

  const ItemListaHorizontal({
    super.key,
    this.corBackground = Colors.white,
    this.padding,
    this.borderRadius,
    this.boxBorder,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: corBackground,
        borderRadius: borderRadius ?? BorderRadius.circular(24.0),
        border: boxBorder ?? Border.all(color: Cores.verde3, width: 1.0),
      ),
      child: child,
    );
  }
}
