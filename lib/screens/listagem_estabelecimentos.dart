import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/components/app_bar_padrao.dart';
import 'package:my_app/components/item_lista_estabelecimentos.dart';
import 'package:my_app/components/input_pesquisa.dart';
import 'package:my_app/utils/constantes.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/estabelecimentos_fake.dart';
import 'package:my_app/utils/tipografia.dart';

class ListagemEstabelecimentos extends StatefulWidget {
  const ListagemEstabelecimentos({super.key});

  @override
  State<ListagemEstabelecimentos> createState() =>
      _ListagemEstabelecimentosState();
}

class _ListagemEstabelecimentosState extends State<ListagemEstabelecimentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarPadrao(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Buscar', style: Tipografia.titulo1),
            const SizedBox(height: 12.0),
            const InputPesquisa(),
            const SizedBox(height: 16.0),
            const Text('16 encontrados', style: Tipografia.corpo2),
            const SizedBox(height: 12.0),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: Constantes.logosTeste.length,
                itemBuilder: (context, index) {
                  final estabelecimento =
                      EstabelecimentosFake.estabelecimentosFake[index];

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemListaEstabelecimentos(
                        estabelecimento: estabelecimento,
                        onTap: () => context.push('/visualizar/$index'),
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
    );
  }
}
