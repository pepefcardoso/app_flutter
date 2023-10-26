import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:my_app/models/contatos.dart';
import 'package:my_app/utils/cores.dart';
import 'package:my_app/utils/tipografia.dart';
import 'package:url_launcher/url_launcher.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        '(${contatos.telefones?[0].ddd}) ${contatos
                            .telefones?[0].numero}',
                        style: Tipografia.corpo1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
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
                        '(${contatos.telefones?[1].ddd}) ${contatos
                            .telefones?[1].numero}',
                        style: Tipografia.corpo1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _abreLink('https://www.instagram.com/${contatos.instagram}/'),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            FontAwesomeIcons.instagram,
                            size: 18.0,
                            color: Cores.verde3,
                          ),
                          const SizedBox(width: 8.0),
                          Flexible(
                            child: Text(
                              '@${contatos.instagram}',
                              style: Tipografia.corpo1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: InkWell(
                      onTap: () => _abreLink('https://www.facebook.com/${contatos.facebook}/'),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            FontAwesomeIcons.facebook,
                            size: 18.0,
                            color: Cores.verde3,
                          ),
                          const SizedBox(width: 8.0),
                          Flexible(
                            child: Text(
                              '@${contatos.facebook}',
                              style: Tipografia.corpo1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _abreLink(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
