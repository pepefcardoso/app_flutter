class TipoDeDieta {
  final int id;
  final String? nome;

  const TipoDeDieta({
    required this.id,
    this.nome,
  });

  TipoDeDieta.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'];
}
