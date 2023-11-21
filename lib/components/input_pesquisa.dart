import 'package:flutter/material.dart';
import 'package:my_app/components/botao_de_icone_formatado.dart';
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
        suffixIcon: BotaoDeIconeFormatado(
          icone: Icons.filter_list_outlined,
          cor: Cores.escuro,
          onPressed: () => debugPrint('Filtrar'),
          tamanho: 24.0,
        ),
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            width: 1.8,
            color: Cores.cinza1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            width: 1.8,
            color: Cores.cinza1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            width: 1.8,
            color: Cores.cinza1,
          ),
        ),
        hintText: 'Encontre sua proxima refeição',
        hintStyle: Tipografia.corpo1.copyWith(color: Cores.cinza1),
      ),
    );
  }
}
