import 'package:flutter/material.dart';

class CardPaginaInicial extends StatefulWidget {
  const CardPaginaInicial({super.key});

  @override
  State<CardPaginaInicial> createState() => _CardPaginaInicialState();
}

class _CardPaginaInicialState extends State<CardPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 6.0,
      child: SizedBox(
        height: 150.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
