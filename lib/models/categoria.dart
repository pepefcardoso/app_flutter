class Categoria {
  final String id;
  final String? nome;

  const Categoria({
    required this.id,
    this.nome,
  });

  Categoria.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        nome = json['nome'] as String?;
}
