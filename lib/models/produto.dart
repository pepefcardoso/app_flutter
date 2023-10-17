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
      : id = json['id'] as String,
        nome = json['nome'] as String?,
        descricao = json['descricao'] as String?,
        preco = json['preco'] as double?,
        unidadeDeMedida = json['unidadeDeMedida'] as String?,
        urlImagem = json['urlImagem'] as String?;
}
