import 'package:flutter/material.dart';
import 'package:my_app/components/conteudo_introducao.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  final int _nPaginas = 3;
  final PageController _controladorPaginas = PageController(initialPage: 0);
  int _paginaAtual = 0;

  Row _indicadorPaginas() {
    List<Widget> list = [];
    for (int i = 0; i < _nPaginas; i++) {
      list.add(i == _paginaAtual ? _indicador(true) : _indicador(false));
      list.add(const SizedBox(width: 8.0));
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: list,
    );
  }

  AnimatedContainer _indicador(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Cores.claro : Cores.escuro,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.areia4,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: PageView(
          physics: const ClampingScrollPhysics(),
          controller: _controladorPaginas,
          onPageChanged: (int page) {
            setState(() {
              _paginaAtual = page;
            });
          },
          children: const [
            ConteudoIntroducao(
              titulo: 'Conectando pessoas e restaurantes\nao redor do Brasil',
              subtitulo:
                  'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
              caminhoImagem: 'assets/images/onboarding0.png',
              tipografiaTitulo: Tipografia.titulo2,
              tipografiaSubtitulo: Tipografia.corpo2,
            ),
            ConteudoIntroducao(
              titulo: 'Conectando pessoas e restaurantes\nao redor do Brasil',
              subtitulo:
                  'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
              caminhoImagem: 'assets/images/onboarding0.png',
              tipografiaTitulo: Tipografia.titulo2,
              tipografiaSubtitulo: Tipografia.corpo2,
            ),
            ConteudoIntroducao(
              titulo: 'Conectando pessoas e restaurantes\nao redor do Brasil',
              subtitulo:
                  'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
              caminhoImagem: 'assets/images/onboarding0.png',
              tipografiaTitulo: Tipografia.titulo2,
              tipografiaSubtitulo: Tipografia.corpo2,
            ),
          ],
        ),
      ),
      bottomSheet: _indicadorPaginas(),
    );
  }
}
