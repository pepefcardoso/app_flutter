import 'package:flutter/material.dart';
import 'package:my_app/utils/sombras.dart';

class CardDeImagem extends StatelessWidget {
  final String url;
  final double? largura;
  final List<BoxShadow>? sombra;
  final BorderRadius? borda;

  const CardDeImagem({
    super.key,
    required this.url,
    this.largura = 60.0,
    this.sombra,
    this.borda,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: largura,
      height: largura,
      decoration: BoxDecoration(boxShadow: sombra ?? Sombras.sombra3),
      child: ClipRRect(
        borderRadius: borda ?? BorderRadius.circular(8.0),
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
