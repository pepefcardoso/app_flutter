import 'package:my_app/models/business.dart';
import 'package:my_app/models/category.dart';
import 'package:my_app/models/contact.dart';
import 'package:my_app/models/cooking_style.dart';
import 'package:my_app/models/diet.dart';
import 'package:my_app/models/image.dart';
import 'package:my_app/models/opening_hours.dart';
import 'package:my_app/models/phone.dart';
import 'package:my_app/models/ratings_info.dart';
import 'package:my_app/utils/constantes.dart';

class EstabelecimentosFake {
  static List<Business> estabelecimentosFake = List.generate(
    Constantes.logosTeste.length,
    (index) {
      return Business(
        id: index,
        description: Constantes.descricoesTeste[index],
        openNow: index % 2 == 0,
        favorite: index % 2 == 0,
        name: Constantes.nomesRestaurantesTeste[index],
        diets: Constantes.dietasTeste.asMap().entries.map((e) {
          return Diet(
            id: e.key,
            name: e.value,
          );
        }).toList(),
        address: Constantes.enderecoTeste,
        cookingStyles: Constantes.estilosTeste.asMap().entries.map((e) {
          return CookingStyle(
            id: e.key,
            name: e.value,
          );
        }).toList(),
        openingHours: [
          OpeningHours(
            id: 1,
            openingTime: DateTime(2021, 10, 10, 12, 0),
            closingTime: DateTime(2021, 10, 10, 22, 0),
          ),
        ],
        ratingsInfo: const RatingsInfo(
          average: 4,
          count: 110,
        ),
        images: [
          Image(id: 0, url: Constantes.logosTeste[index], type: 'LOGO'),
          Image(id: 1, url: Constantes.imagensPratosTeste[index], type: 'COVER'),
        ],
        category: const Category(
          id: 0,
          name: 'Restaurante',
        ),
        contact: const Contact(
          id: 0,
          email: '',
          facebook: '',
          ifood: '',
          instagram: '',
          website: '',
          phones: [
            Phone(
              id: 0,
              number: '',
              whatsapp: false,
            ),
          ],
        ),
        logoUrl: Constantes.logosTeste[index],
      );
    },
  );
}
