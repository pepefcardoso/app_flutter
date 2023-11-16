class Telefone {
  final String id;
  final String? numero;
  final bool? whatsapp;
  final bool? principal;

  const Telefone({
    required this.id,
    this.numero,
    this.whatsapp,
    this.principal,
  });

  Telefone.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        numero = json['numero'],
        whatsapp = json['whatsapp'],
        principal = json['principal'];

  String get telefoneFormatado {
    if (numero == null) return '';
    if (numero!.length == 10) {
      return '(${numero!.substring(0, 2)}) ${numero!.substring(2, 6)}-${numero!.substring(6)}';
    } else {
      return '(${numero!.substring(0, 2)}) ${numero!.substring(2, 7)}-${numero!.substring(7)}';
    }
  }
}
