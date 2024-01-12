import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/bloc/login/login_bloc.dart';
import 'package:my_app/services/user_service.dart';
import 'package:my_app/utils/http.dart';
import 'package:my_app/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final UserService userService = UserService(
    http: Http(
      dio: Dio(
        BaseOptions(baseUrl: 'http://10.0.2.2:8000'),
      ),
    ),
  );

  final Routes routes = Routes(false);

  late final LoginBloc loginBloc;

  @override
  void initState() {
    super.initState();

    loginBloc = LoginBloc(userService);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
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
        child: Provider.value(
          value: loginBloc,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Healthy Food App',
            routerConfig: routes.router,
          ),
        ),
      ),
    );
  }
}
