import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/components/item_lista_estabelecimentos.dart';
import 'package:my_app/components/input_pesquisa.dart';
import 'package:my_app/utils/constantes.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/estabelecimentos_fake.dart';
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
      backgroundColor: Colors.white,
      body: ColorfulSafeArea(
        color: Cores.verde2,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            right: 16.0,
            left: 16.0,
          ),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
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
                  ),
                  const SizedBox(height: 24.0),
                  const InputPesquisa(),
                  const SizedBox(height: 24.0),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: Constantes.logosTeste.length,
                  itemBuilder: (context, index) {
                    final estabelecimento = EstabelecimentosFake.estabelecimentosFake[index];

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ItemListaEstabelecimentos(
                          estabelecimento: estabelecimento,
                          onTap: () => context.push('/estabelecimento/$index'),
                        ),
                        const Divider(
                          height: 32.0,
                          thickness: 1.0,
                          color: Cores.cinza1,
                        ),
                      ],
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
