class EstiloCulinario {
  final int id;
  final String? nome;
  final bool? principal;

  const EstiloCulinario({
    required this.id,
    this.nome,
    this.principal,
  });

  EstiloCulinario.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'],
        principal = json['principal'];
}
