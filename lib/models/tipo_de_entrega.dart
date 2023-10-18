class TipoDeEntrega {
  final String id;
  final String? nome;

  const TipoDeEntrega({
    required this.id,
    this.nome,
  });

  TipoDeEntrega.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'];
}
