import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class ImagemPerfilEstabelecimento extends StatelessWidget {
  final double? radius;
  final Color? cor;
  final String url;

  const ImagemPerfilEstabelecimento({
    super.key,
    this.radius = 32.0,
    this.cor,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: cor ?? Cores.verde3,
      child: CircleAvatar(
        radius: radius! - 1.5,
        backgroundImage: NetworkImage(
          url,
        ),
      ),
    );
  }
}
