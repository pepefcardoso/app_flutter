import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:my_app/app_initialization.dart';
import 'package:my_app/bloc/login/login_bloc.dart';
import 'package:my_app/services/user_service.dart';
import 'package:my_app/utils/routes.dart';
import 'package:provider/provider.dart';

void main() async {
  await AppInitialization().initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Routes routes = Routes(false);
  final KiwiContainer globalKiwi = KiwiContainer();

  late final UserService userService;
  late final LoginBloc loginBloc;

  @override
  void initState() {
    super.initState();

    userService = globalKiwi.resolve<UserService>();

    loginBloc = globalKiwi.resolve<LoginBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          log(state.status.toString());

          if (state.status == LoginStatus.logging || state.status == LoginStatus.error) {
            return;
          }

          if (state.status == LoginStatus.notLogged) {
            routes.isLogged = false;
          } else if (state.status == LoginStatus.logged) {
            routes.isLogged = true;
          }
          setState(() {
            routes.router.go('/');
          });
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Healthy Food App',
          routerConfig: routes.router,
        ),
      ),
    );
  }
}
