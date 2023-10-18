class Endereco {
  final String id;
  final String? logradouro;
  final String? numero;
  final String? complemento;
  final String? bairro;
  final String? cidade;
  final String? estado;
  final String? cep;
  final double? latitude;
  final double? longitude;

  Endereco({
    required this.id,
    this.logradouro,
    this.numero,
    this.complemento,
    this.bairro,
    this.cidade,
    this.estado,
    this.cep,
    this.latitude,
    this.longitude,
  });

  Endereco.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        logradouro = json['logradouro'],
        numero = json['numero'],
        complemento = json['complemento'],
        bairro = json['bairro'],
        cidade = json['cidade'],
        estado = json['estado'],
        cep = json['cep'],
        latitude = json['latitude'],
        longitude = json['longitude'];
}
