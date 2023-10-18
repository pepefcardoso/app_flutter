class ImagensEstabelecimento {
  final String id;
  final String? logoUrl;
  final String? capaUrl;
  final List<String?>? fotosUrl;

  const ImagensEstabelecimento({
    required this.id,
    this.logoUrl,
    this.capaUrl,
    this.fotosUrl,
  });

  ImagensEstabelecimento.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        logoUrl = json['logoUrl'],
        capaUrl = json['capaUrl'],
        fotosUrl = json['fotosUrl'];
}
