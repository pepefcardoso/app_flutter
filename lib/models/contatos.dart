import 'package:my_app/models/telefone.dart';

class Contatos {
  final String id;
  final List<Telefone>? telefones;
  final String? email;
  final String? site;
  final String? facebook;
  final String? instagram;
  final String? ifood;

  Contatos({
    required this.id,
    this.telefones,
    this.email,
    this.site,
    this.facebook,
    this.instagram,
    this.ifood,
  });

  Contatos.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        telefones = json['telefones'],
        email = json['email'],
        site = json['site'],
        facebook = json['facebook'],
        instagram = json['instagram'],
        ifood = json['ifood'];
}
