import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/components/botao_de_icone_formatado.dart';
import 'package:my_app/components/standard_app_bar.dart';
import 'package:my_app/utils/cores.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StandardAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children : [
              BotaoDeIconeFormatado(
                icone: Icons.restaurant,
                cor: Cores.verde1,
                onPressed: () => GoRouter.of(context).go('/businesses'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
