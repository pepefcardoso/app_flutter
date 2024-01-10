import 'package:flutter/material.dart';
import 'package:my_app/bloc/login_bloc.dart';
import 'package:my_app/utils/tipografia.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _senhaController;
  late final LoginBloc _loginBloc;
  bool _loadedLoginBloc = false;

  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _senhaController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _loginBloc = Provider.of<LoginBloc>(context, listen: true);

    setState(() {
      _loadedLoginBloc = true;
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (!_loadedLoginBloc) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Login',
                style: Tipografia.titulo1,
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                controller: _senhaController,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _loginBloc.add(
                    RequestLogin(
                      email: _emailController.text,
                      password: _senhaController.text,
                    ),
                  );
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
