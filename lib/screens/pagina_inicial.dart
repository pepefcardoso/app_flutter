import 'package:flutter/material.dart';
import 'package:my_app/components/card_pagina_inicial.dart';
import 'package:my_app/components/input_pesquisa.dart';
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
            vertical: 24.0,
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text('Bem vindo!', style: Tipografia.titulo2),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: InputPesquisa(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const CardEstabelecimento();
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/onboarding');
                },
                child: const Text('Ir para Onboarding'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
