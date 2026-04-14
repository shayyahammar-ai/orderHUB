import 'package:ex_app/helper/api.dart';
import 'package:ex_app/models/models.dart';

class GetAllInfoService {
  static String? local='http://127.0.0.1:8000';
  Future<List<Models>> getAllInfoService() async {
    List<dynamic> data = await Api().get(
      url: '$local/api/showAll',
    );

    List<Models> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(Models.fromJson(data[i]));
    }

    return productsList;
  }
}
