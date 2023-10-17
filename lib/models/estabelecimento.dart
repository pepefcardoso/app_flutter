import 'package:my_app/models/contatos.dart';
import 'package:my_app/models/endereco.dart';
import 'package:my_app/models/imagens_estabelecimento.dart';
import 'package:my_app/models/produto.dart';

class Estabelecimento {
  final String id;
  final String? proprietarioId;
  final String? nome;
  final dynamic categoria;
  final List<dynamic>? tiposDeDietas;
  final Endereco? endereco;
  final Contatos? contatos;
  final dynamic horarioFuncionamento;
  final dynamic tipoDeEntrega;
  final String? descricao;
  final List<dynamic>? estilosCulinarios;
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
        categoria = json['categoria'],
        tiposDeDietas = json['tiposDeDietas'],
        endereco = json['endereco'] != null ? Endereco.fromJson(json['endereco']) : null,
        contatos = json['contatos'] != null ? Contatos.fromJson(json['contatos']) : null,
        horarioFuncionamento = json['horarioFuncionamento'],
        tipoDeEntrega = json['tipoDeEntrega'],
        descricao = json['descricao'],
        estilosCulinarios = json['estilosCulinarios'],
        imagens = json['imagens'] != null ? ImagensEstabelecimento.fromJson(json['imagens']) : null,
        produtos = json['produtos'] != null
            ? (json['produtos'] as List<dynamic>).map((e) => Produto.fromJson(e)).toList()
            : null;
}
