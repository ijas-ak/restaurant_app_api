import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishal_ui/controllers/provider.dart';
import 'package:rishal_ui/services/auth_provider.dart';
import 'package:rishal_ui/view/auth_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FoodProvider()),
        ChangeNotifierProvider(create: (context) => MyProvider()),
      ],
      child: MaterialApp(
        home: AuthUi(),
        theme: ThemeData(colorScheme: ColorScheme.dark()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
