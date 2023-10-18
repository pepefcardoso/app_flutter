class Produto {
  final String id;
  final String? nome;
  final String? descricao;
  final double? preco;
  final String? unidadeDeMedida;
  final String? urlImagem;

  const Produto({
    required this.id,
    this.nome,
    this.descricao,
    this.preco,
    this.unidadeDeMedida,
    this.urlImagem,
  });

  Produto.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'],
        descricao = json['descricao'],
        preco = json['preco'],
        unidadeDeMedida = json['unidadeDeMedida'],
        urlImagem = json['urlImagem'];
}
