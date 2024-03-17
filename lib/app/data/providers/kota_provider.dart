import 'package:get/get.dart';

import '../models/kota_model.dart';

class KotaProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return City.fromJson(map);
      if (map is List) return map.map((item) => City.fromJson(item)).toList();
    };
    httpClient.baseUrl = '1e05552c3337d4d2dcd7e6bd3e0456cb';
  }

  Future<City?> getKota(int id) async {
    final response = await get('kota/$id');
    return response.body;
  }

  Future<Response<City>> postKota(City kota) async => await post('kota', kota);
  Future<Response> deleteKota(int id) async => await delete('kota/$id');
}
