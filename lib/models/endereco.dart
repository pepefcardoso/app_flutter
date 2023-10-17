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
      : id = json['id'] as String,
        logradouro = json['logradouro'] as String?,
        numero = json['numero'] as String?,
        complemento = json['complemento'] as String?,
        bairro = json['bairro'] as String?,
        cidade = json['cidade'] as String?,
        estado = json['estado'] as String?,
        cep = json['cep'] as String?,
        latitude = json['latitude'] as double?,
        longitude = json['longitude'] as double?;
}
