import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String username = '';
  bool isLogged = false;

  void loginStatus() {
    isLogged = !isLogged;
    notifyListeners();
  }

  void setData(String value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("username", value);
    notifyListeners();
  }

  void getData() async {
    final pref = await SharedPreferences.getInstance();
    username = pref.getString('username') ?? '';
    notifyListeners();
  }
}
