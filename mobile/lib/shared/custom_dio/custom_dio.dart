import 'package:dio/dio.dart';
import 'package:mobile/shared/custom_dio/interceptors.dart';
import '../constants.dart';

class CustomDio {
  final Dio dio;

  CustomDio(this.dio) {
    this.dio.options.baseUrl = BASE_URL;
  }

  
}
