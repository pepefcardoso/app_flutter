import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/components/botao_contornado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Home Page'),
              BotaoContornado(
                child: const Text('Ir para a página de login'),
                onTap: () {
                  GoRouter.of(context).go('/login');
                },
              ),
              BotaoContornado(
                child: const Text('Ir para a página de estabelecimentos'),
                onTap: () {
                  GoRouter.of(context).go('/businesses');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
