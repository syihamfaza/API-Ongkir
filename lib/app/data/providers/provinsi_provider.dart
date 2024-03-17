import 'package:get/get.dart';

import '../models/provinsi_model.dart';

class ProvinsiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Province.fromJson(map);
      if (map is List)
        return map.map((item) => Province.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Province?> getProvinsi(int id) async {
    final response = await get('provinsi/$id');
    return response.body;
  }

  Future<Response<Province>> postProvinsi(Province provinsi) async =>
      await post('provinsi', provinsi);
  Future<Response> deleteProvinsi(int id) async => await delete('provinsi/$id');
}
