import 'package:my_app/models/contatos.dart';
import 'package:my_app/models/endereco.dart';
import 'package:my_app/models/telefone.dart';

class Constantes {
  static const List<String> imagensTeste = [
    'https://lh3.googleusercontent.com/p/AF1QipPwKunNgnfzXS3M2MGHycVBx8mo6BHiLvrWHm-h=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipP_MGfOe7do8-KN7wLm-zOUL6bO17oV4nlG7ro8=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipPoAK4hFEFXo0KuPT-q5Ij1TEzClfqHP7IRn4jB=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipMfjmzFY4QA9bpMi7TLYiVAHuDOVF5MDYZtRi6T=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipO0Uzh3ICV8kTsIYnqoESSnE0323NVQoSzFacTI=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipPtz_IRfl8IbuHVCyKEBrOmoz7qU7UoslfjC_Bg=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipP_MGfOe7do8-KN7wLm-zOUL6bO17oV4nlG7ro8=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipPoAK4hFEFXo0KuPT-q5Ij1TEzClfqHP7IRn4jB=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipMfjmzFY4QA9bpMi7TLYiVAHuDOVF5MDYZtRi6T=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipO0Uzh3ICV8kTsIYnqoESSnE0323NVQoSzFacTI=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipPtz_IRfl8IbuHVCyKEBrOmoz7qU7UoslfjC_Bg=s680-w680-h510',
    'https://lh3.googleusercontent.com/p/AF1QipP_MGfOe7do8-KN7wLm-zOUL6bO17oV4nlG7ro8=s680-w680-h510',
  ];

  static const List<String> nomesTeste = [
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
    facebook: 'https://www.facebook.com/francisbelsemgluten/',
    ifood:
        'https://www.ifood.com.br/delivery/florianopolis-sc/padaria--cafe-franchis-cachoeira-do-bom-jesus/49e2b2b6-f42b-4e64-b2f1-f8e808a22291?prato=77acaa55-ad0d-4a9f-835a-023a5d8346ec',
    instagram: 'https://www.instagram.com/francisbelcozinhainclusiva/',
    site: 'https://francisbel.com.br/francisbel/pedidos',
    telefones: const [
      Telefone(
        id: '1',
        numero: '3266-1111',
        ddd: '48',
        principal: true,
        whatsapp: false,
      ),
      Telefone(
        id: '2',
        numero: '99999-9999',
        ddd: '48',
        principal: false,
        whatsapp: true,
      ),
    ],
  );
}
