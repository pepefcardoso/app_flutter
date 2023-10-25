import 'package:flutter/material.dart';

import 'package:my_app/models/contatos.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';

class CardContatosEstabelecimento extends StatelessWidget {
  final Contatos contatos;
  final VoidCallback onTap;

  const CardContatosEstabelecimento({
    super.key,
    required this.contatos,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.phone,
                        size: 18.0,
                        color: Cores.verde3,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '(${contatos.telefones?[0].ddd}) ${contatos.telefones?[0].numero}',
                        style: Tipografia.corpo1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.phone_android,
                        size: 18.0,
                        color: Cores.verde3,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '(${contatos.telefones?[1].ddd}) ${contatos.telefones?[1].numero}',
                        style: Tipografia.corpo1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.phone,
                        size: 18.0,
                        color: Cores.verde3,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '(${contatos.telefones?[0].ddd}) ${contatos.telefones?[0].numero}',
                        style: Tipografia.corpo1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(width: 24.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.phone_android,
                        size: 18.0,
                        color: Cores.verde3,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        '(${contatos.telefones?[1].ddd}) ${contatos.telefones?[1].numero}',
                        style: Tipografia.corpo1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
