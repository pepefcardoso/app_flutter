class EstiloCulinario {
  final String id;
  final String? nome;

  const EstiloCulinario({
    required this.id,
    this.nome,
  });

  EstiloCulinario.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'];
}
