class Imagem {
  final int id;
  final String? url;

  const Imagem({
    required this.id,
    this.url,
  });

  Imagem.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'];
}
