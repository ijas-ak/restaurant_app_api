import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:rishal_ui/constants/api_consts.dart';
import 'package:rishal_ui/model/food_model.dart';
import 'package:rishal_ui/model/food_model2.dart';

class ApiService {
  final dio = Dio();
  final apiConst = ApiConsts();
  Future getData() async {
    final response = await dio.get(
      '${apiConst.baseUrl}?query=burger,pizza&${apiConst.apiKey}',
    );
    if (response.statusCode == 200) {
      log("Success");
      List<dynamic> jsonData = response.data['menuItems'];
      return jsonData.map((e) => Food.fromJson(e)).toList();
    } else {
      log("failed to log");
    }
  }
}

class ApiService2 {
  final dio = Dio();
  final apiConst = ApiConsts();
  Future getData() async {
    final response = await dio.get(apiConst.meatBaseUrl);
    if (response.statusCode == 200) {
      log("Success");
      List<dynamic> jsonData = response.data['categories'];
      return jsonData.map((e) => Meat.fromJson(e)).toList();
    } else {
      log("failed to log");
    }
  }
}
