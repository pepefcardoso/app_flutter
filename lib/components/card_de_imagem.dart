import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class CardDeImagem extends StatelessWidget {
  final String url;
  final double? largura;
  final BorderRadius? borda;

  const CardDeImagem({
    super.key,
    required this.url,
    this.largura = 60.0,
    this.borda,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: largura,
      height: largura,
      child: ClipRRect(
        borderRadius: borda ?? BorderRadius.circular(8.0),
        child: Image.network(
          url,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;

            return Center(
              child: CircularProgressIndicator(
                color: Cores.verde3,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
