import 'package:flutter/material.dart';
import 'package:my_app/utils/cores.dart';

class CardEstabelecimento extends StatefulWidget {
  const CardEstabelecimento({super.key});

  @override
  State<CardEstabelecimento> createState() => _CardEstabelecimentoState();
}

class _CardEstabelecimentoState extends State<CardEstabelecimento> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 6.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.network(
              height: 200.0,
              'https://lh3.googleusercontent.com/p/AF1QipMgdKGbBz3jQdQ8APUzkeac-OZbsvlF3Re4nuSr=s680-w680-h510',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 80.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Cores.areia1,
            ),
          ),
        ],
      ),
    );
  }
}
