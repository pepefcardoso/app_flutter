import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class LeveSaborComIcone extends StatelessWidget {
  const LeveSaborComIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'LeveSabor',
          style: Tipografia.titulo1.copyWith(
            color: Cores.verde1,
          ),
        ),
        SvgPicture.asset(
          'assets/svg/logo_icone.svg',
          height: 38.0,
          colorFilter: const ColorFilter.mode(
            Cores.verde1,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
