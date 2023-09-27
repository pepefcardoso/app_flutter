import 'package:flutter/cupertino.dart';
import 'package:my_app/utils/tipografia.dart';

class ConteudoIntroducao extends StatelessWidget {
  final String? caminhoImagem;
  final String? titulo;
  final String? subtitulo;
  final TextStyle? tipografiaTitulo;
  final TextStyle? tipografiaSubtitulo;

  const ConteudoIntroducao({
    super.key,
    this.caminhoImagem,
    this.titulo = '',
    this.subtitulo = '',
    this.tipografiaTitulo,
    this.tipografiaSubtitulo,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle t1 = tipografiaTitulo ?? Tipografia.titulo2;
    final TextStyle t2 = tipografiaSubtitulo ?? Tipografia.corpo2;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (caminhoImagem != null) ...[
          Expanded(
            child: Image.asset(
              caminhoImagem!,
              fit: BoxFit.contain,
            ),
          ),
        ],
        Column(
          children: [
            Text(
              titulo!,
              style: t1,
            ),
            const SizedBox(height: 16.0),
            Text(
              subtitulo!,
              style: t2,
            ),
          ],
        ),
      ],
    );
  }
}
