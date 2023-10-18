import 'package:my_app/models/categoria.dart';
import 'package:my_app/models/contatos.dart';
import 'package:my_app/models/endereco.dart';
import 'package:my_app/models/estilo_culinario.dart';
import 'package:my_app/models/horario_funcionamento.dart';
import 'package:my_app/models/imagens_estabelecimento.dart';
import 'package:my_app/models/produto.dart';
import 'package:my_app/models/tipo_de_dieta.dart';
import 'package:my_app/models/tipo_de_entrega.dart';

class Estabelecimento {
  final String id;
  final String? proprietarioId;
  final String? nome;
  final Categoria? categoria;
  final List<TipoDeDieta>? tiposDeDietas;
  final Endereco? endereco;
  final Contatos? contatos;
  final List<HorarioFuncionamento>? horarioFuncionamento;
  final TipoDeEntrega? tipoDeEntrega;
  final String? descricao;
  final List<EstiloCulinario>? estilosCulinarios;
  final ImagensEstabelecimento? imagens;
  final List<Produto?>? produtos;

  const Estabelecimento({
    required this.id,
    this.proprietarioId,
    this.nome,
    this.categoria,
    this.tiposDeDietas,
    this.endereco,
    this.contatos,
    this.horarioFuncionamento,
    this.tipoDeEntrega,
    this.descricao,
    this.estilosCulinarios,
    this.imagens,
    this.produtos,
  });

  Estabelecimento.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        proprietarioId = json['proprietarioId'],
        nome = json['nome'],
        categoria = json['categoria'] != null
            ? Categoria.fromJson(json['categoria'])
            : null,
        tiposDeDietas = json['tiposDeDietas'] != null
            ? (json['tiposDeDietas'] as List<dynamic>)
                .map((e) => TipoDeDieta.fromJson(e))
                .toList()
            : null,
        endereco = json['endereco'] != null
            ? Endereco.fromJson(json['endereco'])
            : null,
        contatos = json['contatos'] != null
            ? Contatos.fromJson(json['contatos'])
            : null,
        horarioFuncionamento = json['horarioFuncionamento'] != null
            ? (json['horarioFuncionamento'] as List<dynamic>)
                .map((e) => HorarioFuncionamento.fromJson(e))
                .toList()
            : null,
        tipoDeEntrega = json['tipoDeEntrega'] != null
            ? TipoDeEntrega.fromJson(json['tipoDeEntrega'])
            : null,
        descricao = json['descricao'],
        estilosCulinarios = json['estilosCulinarios'] != null
            ? (json['estilosCulinarios'] as List<dynamic>)
                .map((e) => EstiloCulinario.fromJson(e))
                .toList()
            : null,
        imagens = json['imagens'] != null
            ? ImagensEstabelecimento.fromJson(json['imagens'])
            : null,
        produtos = json['produtos'] != null
            ? (json['produtos'] as List<dynamic>)
                .map((e) => Produto.fromJson(e))
                .toList()
            : null;
}
