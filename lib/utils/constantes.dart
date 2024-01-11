import 'package:my_app/models/address.dart';
import 'package:my_app/models/contact.dart';
import 'package:my_app/models/phone.dart';

class Constantes {
  static const List<String> descricoesTeste = [
    'Uma brasserie charmosa, com cardápio francês contemporâneo e uma vista deslumbrante da cidade.',
    'Um restaurante familiar, com pratos caseiros e uma atmosfera acolhedora que lembra a casa da avó.',
    'Um bistrô de culinária fusion, que combina sabores asiáticos e latino-americanos de maneira inovadora.',
    'Um local rústico, especializado em churrascos defumados lentamente e acompanhamentos regionais.',
    'Um restaurante vegano com ingredientes orgânicos, apresentando pratos criativos e sustentáveis.',
    'Uma steakhouse sofisticada, famosa por cortes premium e um serviço impecável.',
    'Um diner retrô, decorado nos anos 50, servindo hambúrgueres clássicos e milkshakes.',
    'Um sushi bar moderno, onde chefs experientes preparam peixes frescos de maneira artística.',
    'Um café urbano, com uma variedade de brunchs saudáveis e opções de café artesanal.',
    'Um restaurante de frutos do mar à beira-mar, oferecendo pratos frescos e uma vista panorâmica do oceano.'
  ];

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
    // 'Orgânicos',
    // 'Sem soja',
    // 'Keto',
    // 'Paleo',
    // 'Low Carb'
  ];

  static const List<String> estilosTeste = [
    'Pizzas',
    'Lanches',
    'Italiana',
    'Brasileira',
    'Patisserie',
    'Japonesa',
    // 'Mexicana',
    // 'Churrascaria',
    // 'Frutos do Mar',
    // 'Vegan',
    // 'Fast Food',
    // 'Sorveteria'
  ];

  static final Address enderecoTeste = Address(
    id: 1,
    street: 'Rua dos Bobos',
    complement: 'Salas 101',
    number: '0',
    district: 'Centro',
    city: 'São Paulo',
    state: 'SP',
    zipCode: '00000-000',
    latitude: -23.550520,
    longitude: -46.633308,
  );

  static const Contact contatosTeste = Contact(
    id: 1,
    email: 'teste@teste.com',
    facebook: 'francisbelsemgluten',
    ifood: 'https://www.ifood.com.br/delivery/florianopolis-sc/padaria--cafe-franchis-cachoeira-do-bom-jesus',
    instagram: 'francisbelcozinhainclusiva',
    website: 'francisbel.com.br',
    phones: [
      Phone(
        id: 1,
        number: '48999999999',
        whatsapp: true,
      ),
      Phone(
        id: 2,
        number: '48999999999',
        whatsapp: false,
      ),
    ],
  );
}
