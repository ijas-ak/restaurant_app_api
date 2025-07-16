import 'package:flutter/material.dart';
import 'package:rishal_ui/model/food_model.dart';
import 'package:rishal_ui/model/food_model2.dart';
import 'package:rishal_ui/services/api_service.dart';

class FoodProvider with ChangeNotifier {
  List<Food> menu = [];

  void addData() async {
    List<Food> newItems = await ApiService().getData();
    menu = newItems;
    notifyListeners();
  }

  List<Meat> meats = [];

  void meatData() async {
    List<Meat> meatItems = await ApiService2().getData();
    meats = meatItems;
    notifyListeners();
  }
}
