import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/components/card_pagina_inicial.dart';
import 'package:my_app/components/input_pesquisa.dart';
import 'package:my_app/utils/constantes.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.verde2,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 160.0,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Cores.verde1,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(24.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4.0,
                    blurRadius: 8.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'LeveSabor',
                          style: Tipografia.titulo2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/svg/logo_icone.svg',
                          height: 38.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  const InputPesquisa(),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 16.0,
                ),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: CardEstabelecimento(
                        onTap: () => context.push('/estabelecimento'),
                        nome: Constantes.nomesTeste[index],
                        dieta: Constantes.dietasTeste[index],
                        estilo: Constantes.estilosTeste[index],
                        urlImagem: Constantes.imagensTeste[index],
                        avaliacao: '${index + 1}.0',
                        nAvaliacoes: ((index + 1) * 110),
                        distancia: '${(index + 1) * 100} m',
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
