class HorarioFuncionamento {
  final int id;
  final int? diaSemana;
  final String? horaAbertura;
  final String? horaFechamento;
  final DateTime? diaEspecifico;

  const HorarioFuncionamento({
    required this.id,
    this.diaSemana,
    this.horaAbertura,
    this.horaFechamento,
    this.diaEspecifico,
  });

  HorarioFuncionamento.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        diaSemana = json['diaSemana'],
        horaAbertura = json['horaAbertura'],
        horaFechamento = json['horaFechamento'],
        diaEspecifico = json['diaEspecifico'];

  String? get horarioFormatado => '$horaAbertura - $horaFechamento';
}
