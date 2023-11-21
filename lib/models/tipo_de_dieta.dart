class TipoDeDieta {
  final int id;
  final String? nome;
  final bool? principal;

  const TipoDeDieta({
    required this.id,
    this.nome,
    this.principal,
  });

  TipoDeDieta.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'],
        principal = json['principal'];
}
