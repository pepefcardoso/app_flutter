import 'package:flutter/material.dart';
import 'package:my_app/components/custom_icon_card_button.dart';
import 'package:my_app/utils/custom_colors.dart';
import 'package:my_app/utils/tipografia.dart';

class InputPesquisa extends StatefulWidget {
  const InputPesquisa({super.key});

  @override
  State<InputPesquisa> createState() => _InputPesquisaState();
}

class _InputPesquisaState extends State<InputPesquisa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 16.0, top: 12.0),
            filled: true,
            fillColor: Colors.white,
            border: _bordaPadrao(),
            focusedBorder: _bordaPadrao(),
            enabledBorder: _bordaPadrao(),
            hintText: 'Encontre sua proxima refeição',
            hintStyle: Tipografia.corpo1.copyWith(color: CustomColors.cinza1),
          ),
        ),
        const SizedBox(height: 12.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8.0,
                children: [
                  CustomIconCardButton(
                    icon: Icons.compare_arrows_sharp,
                    iconColor: CustomColors.verde3,
                    iconSize: 32.0,
                  ),
                  Text('Ordenar', style: Tipografia.corpo2Bold),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8.0,
                children: [
                  CustomIconCardButton(
                    icon: Icons.filter_list,
                    iconColor: CustomColors.verde3,
                    iconSize: 32.0,
                  ),
                  Text('Filtrar', style: Tipografia.corpo2Bold),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  OutlineInputBorder _bordaPadrao() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(18.0),
        borderSide: const BorderSide(
          width: 1.8,
          color: CustomColors.cinza1,
        ),
      );
}
