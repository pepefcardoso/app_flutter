class ImagemDoEstabelecimento {
  final int id;
  final String? url;
  final bool? logo;

  const ImagemDoEstabelecimento({
    required this.id,
    this.url,
    this.logo,
  });

  ImagemDoEstabelecimento.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        url = json['url'],
        logo = json['logo'];
}
