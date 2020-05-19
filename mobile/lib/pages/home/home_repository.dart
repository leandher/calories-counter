import 'package:dio/dio.dart';
import 'package:mobile/models/food_model.dart';
import 'package:mobile/shared/custom_dio/custom_dio.dart';

class HomeRepository {
  final CustomDio _client;

  HomeRepository(this._client);

  Future<ResponseFood> getFoods(String keyword, int page) async {
    try {
      var uri = Uri(
        path: '/foods',
        queryParameters: {
          'keyword': keyword,
          'offset': page.toString(),
        }
      );
      var response = await _client.dio.getUri(uri);

      return ResponseFood.fromJson(response.data);
    } on DioError catch (e) {
      throw(e.message);
    } catch (e) {
      throw(e.toString());
    }
  }
}