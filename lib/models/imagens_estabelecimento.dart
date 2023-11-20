class ImagemDoEstabelecimento {
  final int id;
  final String? url;
  final String? nome;

  const ImagemDoEstabelecimento({
    required this.id,
    this.url,
    this.nome,
  });

  ImagemDoEstabelecimento.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'],
        nome = json['nome'];
}
