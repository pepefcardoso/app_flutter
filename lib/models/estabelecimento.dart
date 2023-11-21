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
  final int id;
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
  final List<ImagemDoEstabelecimento>? imagens;
  final List<Produto>? produtos;
  final bool? aberto;
  final bool? favorito;
  final String? nota;
  final int? quantidadeDeAvaliacoes;
  final String? distancia;

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
    this.aberto,
    this.favorito,
    this.quantidadeDeAvaliacoes,
    this.distancia,
    this.nota,
  });

  Estabelecimento.fromJson(Map<String, dynamic> json)
      : id = json['id'],
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
            ? (json['imagens'] as List)
                .map((json) => ImagemDoEstabelecimento.fromJson(json))
                .toList()
            : null,
        produtos = json['produtos'] != null
            ? (json['produtos'] as List<dynamic>)
                .map((e) => Produto.fromJson(e))
                .toList()
            : null,
        aberto = json['aberto'],
        favorito = json['favorito'],
        quantidadeDeAvaliacoes = json['quantidade_de_avaliacoes'],
        distancia = json['distancia'],
        nota = json['nota'];

  List<TipoDeDieta>? get tiposDeDietasPrincipais {
    return tiposDeDietas
        ?.where((tipoDeDieta) => tipoDeDieta.principal == true)
        .toList();
  }

  List<EstiloCulinario>? get estilosCulinariosPrincipais {
    return estilosCulinarios
        ?.where((estiloCulinario) => estiloCulinario.principal == true)
        .toList();
  }
}
