import 'package:my_app/models/telefone.dart';

class Contatos {
  final String id;
  final Telefone? telefoneFixo;
  final Telefone? telefoneCelular;
  final String? email;
  final String? site;
  final String? facebook;
  final String? instagram;
  final String? ifood;

  Contatos({
    required this.id,
    this.telefoneFixo,
    this.telefoneCelular,
    this.email,
    this.site,
    this.facebook,
    this.instagram,
    this.ifood,
  });

  Contatos.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        telefoneFixo = json['telefoneFixo'] != null
            ? Telefone.fromJson(json['telefoneFixo'])
            : null,
        telefoneCelular = json['telefoneCelular'] != null
            ? Telefone.fromJson(json['telefoneCelular'])
            : null,
        email = json['email'],
        site = json['site'],
        facebook = json['facebook'],
        instagram = json['instagram'],
        ifood = json['ifood'];
}
