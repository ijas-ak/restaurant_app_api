import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishal_ui/controllers/provider.dart';

import 'package:rishal_ui/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FoodProvider(),
      child: MaterialApp(
        home: HomePage(),
        theme: ThemeData(colorScheme: ColorScheme.dark()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
