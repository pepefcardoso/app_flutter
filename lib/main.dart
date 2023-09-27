import 'package:flutter/material.dart';
import 'package:my_app/screens/onboarding_page.dart';
import 'package:my_app/screens/pagina_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Healthy Food App',
      initialRoute: '/home',
      routes: {
        '/onboarding': (context) => const OnboardingPage(),
        '/home': (context) => const PaginaInicial(),
      },
    );
  }
}
