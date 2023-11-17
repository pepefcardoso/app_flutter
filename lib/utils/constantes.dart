import 'package:my_app/models/contatos.dart';
import 'package:my_app/models/endereco.dart';
import 'package:my_app/models/telefone.dart';

class Constantes {
  static const List<String> imagensPratosTeste = [
    'https://plus.unsplash.com/premium_photo-1663852297267-827c73e7529e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1663858367001-89e5c92d1e0e?q=80&w=1315&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?q=80&w=1380&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=1381&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1676106623769-539ecc6d7f92?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1565958011703-44f9829ba187?q=80&w=1365&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  static List<String> logosTeste = [
    'https://plus.unsplash.com/premium_photo-1673408622902-8c1126555f29?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1563002536-440db6fcc743?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1527025047-354c31c26312?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1460134583608-5f5d1dd1d61c?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1560311225-6a3038e96820?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1572843540747-22eea9bcfa6b?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1622215216302-2169bd5f4e5f?q=80&w=871&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1541980294979-572cb9d973fd?q=80&w=934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1572025416011-70c242d3918f?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1572037604517-4651d6444ffc?q=80&w=1031&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  static const List<String> nomePratosTeste = [
    'Feijoada',
    'Moqueca',
    'Pão de Queijo',
    'Acarajé',
    'Churrasco',
    'Coxinha',
    'Bobó de Camarão',
    'Empadão Goiano',
    'Baião de Dois',
    'Vatapá',
    'Farofa',
    'Picanha',
    'Pastel',
    'Tapioca',
    'Brigadeiro',
    'Açaí na Tigela',
    'Escondidinho',
    'Rabada',
    'Caruru',
    'Quindim',
  ];

  static const List<String> nomesRestaurantesTeste = [
    'Sabores da Amazônia',
    'Tapioca Tropical',
    'Churrascaria do Sul',
    'Feijoada da Vovó',
    'Açaí Mania',
    'Boteco do Samba',
    'Pizzaria Bambino',
    'Peixaria Atlântica',
    'Casa da Pamonha',
    'Frutos do Mar',
    'Grill Mineiro',
    'Pastelaria Paulista'
  ];

  static const List<String> dietasTeste = [
    'Celíacos',
    'Sem lactose',
    'Diabéticos',
    'Sem glúten',
    'Fit',
    'Veganos',
    'Vegetarianos',
    'Orgânicos',
    'Sem soja',
    'Keto',
    'Paleo',
    'Low Carb'
  ];

  static const List<String> estilosTeste = [
    'Pizzas',
    'Lanches',
    'Italiana',
    'Brasileira',
    'Patisserie',
    'Japonesa',
    'Mexicana',
    'Churrascaria',
    'Frutos do Mar',
    'Vegan',
    'Fast Food',
    'Sorveteria'
  ];

  static final Endereco enderecoTeste = Endereco(
    id: '1',
    logradouro: 'Rua dos Bobos',
    complemento: 'Salas 101',
    numero: '0',
    bairro: 'Centro',
    cidade: 'São Paulo',
    estado: 'SP',
    cep: '00000-000',
    latitude: -23.550520,
    longitude: -46.633308,
  );

  static final Contatos contatosTeste = Contatos(
    id: '1',
    email: 'teste@teste.com',
    facebook: 'francisbelsemgluten',
    ifood: 'https://www.ifood.com.br/delivery/florianopolis-sc/padaria--cafe-franchis-cachoeira-do-bom-jesus',
    instagram: 'francisbelcozinhainclusiva',
    site: 'francisbel.com.br',
    telefoneFixo: const Telefone(
      id: '1',
      numero: '4832661111',
      principal: true,
      whatsapp: false,
    ),
    telefoneCelular: const Telefone(
      id: '2',
      numero: '48999999999',
      principal: false,
      whatsapp: true,
    ),
  );
}
