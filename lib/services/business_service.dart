import 'package:my_app/models/business.dart';
import 'package:my_app/utils/http.dart';

class BusinessService {
  final Http http;

  BusinessService({required this.http});

  Future<List<Business>> getBusinesses(Map<String, dynamic> filters) async {
    final response = await http.getJson(
      '/api/estabelecimentos',
      queryParameters: filters,
    );

    final List<Business> businesses = response.data;

    return businesses;
  }
}
