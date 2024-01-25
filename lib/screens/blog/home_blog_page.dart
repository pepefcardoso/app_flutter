import 'package:flutter/material.dart';
import 'package:my_app/components/standard_app_bar.dart';

class HomeBlogPage extends StatefulWidget {
  const HomeBlogPage({super.key});

  @override
  State<HomeBlogPage> createState() => _HomeBlogPageState();
}

class _HomeBlogPageState extends State<HomeBlogPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: StandardAppBar(),
      body: SafeArea(
        child: Placeholder(),
      ),
    );
  }
}
