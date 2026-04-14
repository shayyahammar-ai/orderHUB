import 'package:dio/dio.dart';

class Api {
  final Dio _dio = Dio();

  // GET
  Future<dynamic> get({required String url, String? token}) async {
    try {
      Response response = await _dio.get(
        url,
        options: Options(
          headers: token != null
              ? {'Authorization': 'Bearer $token'}
              : null,
        ),
      );

      return response.data;
    } catch (e) {
      throw Exception("GET Error: $e");
    }
  }

  // POST
  Future<dynamic> post({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    try {
      Response response = await _dio.post(
        url,
        data: body,
        options: Options(
          headers: token != null
              ? {'Authorization': 'Bearer $token'}
              : null,
        ),
      );

      return response.data;
    } catch (e) {
      throw Exception("POST Error: $e");
    }
  }

  // PUT
  Future<dynamic> put({
    required String url,
    required dynamic body,
    String? token,
  }) async {
    try {
      Response response = await _dio.put(
        url,
        data: body,
        options: Options(
          headers: token != null
              ? {'Authorization': 'Bearer $token'}
              : null,
        ),
      );

      return response.data;
    } catch (e) {
      throw Exception("PUT Error: $e");
    }
  }

  // DELETE
  Future<dynamic> delete({
    required String url,
    String? token,
  }) async {
    try {
      Response response = await _dio.delete(
        url,
        options: Options(
          headers: token != null
              ? {'Authorization': 'Bearer $token'}
              : null,
        ),
      );

      return response.data;
    } catch (e) {
      throw Exception("DELETE Error: $e");
    }
  }
}
