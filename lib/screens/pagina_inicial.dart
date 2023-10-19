import 'package:flutter/material.dart';
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
      backgroundColor: Cores.claro,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              const SizedBox(height: 24.0),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Bem vindo!',
                  style: Tipografia.titulo1.copyWith(color: Cores.escuro),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 18.0),
                child: InputPesquisa(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: CardEstabelecimento(
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
            ],
          ),
        ),
      ),
    );
  }
}
