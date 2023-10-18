class Telefone {
  final String id;
  final String? ddd;
  final String? numero;
  final bool? whatsapp;
  final bool? principal;

  const Telefone({
    required this.id,
    this.ddd,
    this.numero,
    this.whatsapp,
    this.principal,
  });

  Telefone.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        ddd = json['ddd'],
        numero = json['numero'],
        whatsapp = json['whatsapp'],
        principal = json['principal'];
}
