class ImagemDoEstabelecimento {
  final int id;
  final String? logoUrl;
  final String? capaUrl;
  final List<String?>? fotosUrl;

  const ImagemDoEstabelecimento({
    required this.id,
    this.logoUrl,
    this.capaUrl,
    this.fotosUrl,
  });

  ImagemDoEstabelecimento.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        logoUrl = json['logoUrl'],
        capaUrl = json['capaUrl'],
        fotosUrl = json['fotosUrl'];
}
