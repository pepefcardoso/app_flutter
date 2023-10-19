import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class InputPesquisa extends StatefulWidget {
  const InputPesquisa({super.key});

  @override
  State<InputPesquisa> createState() => _InputPesquisaState();
}

class _InputPesquisaState extends State<InputPesquisa> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Cores.verde1,
          ),
        ),
        hintText: 'Encontre sua proxima refeição',
        hintStyle: Tipografia.subtitulo1.copyWith(color: Colors.grey),
      ),
    );
  }
}
