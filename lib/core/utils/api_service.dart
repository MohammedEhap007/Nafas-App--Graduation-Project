import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'http://nafas.runasp.net/api/content/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
