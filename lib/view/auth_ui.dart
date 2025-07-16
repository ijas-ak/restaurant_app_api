import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rishal_ui/controllers/auth_provider.dart';
import 'package:rishal_ui/view/home_page.dart';
import 'package:tabler_icons/tabler_icons.dart';

class AuthUi extends StatelessWidget {
  const AuthUi({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final userController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Consumer<MyProvider>(
                builder: (context, value, child) => Icon(
                  value.isLogged ? TablerIcons.lock_open : TablerIcons.lock,
                  size: 180,
                ),
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Consumer<MyProvider>(
                builder: (context, provider, child) => TextFormField(
                  style: TextStyle(color: Colors.black),
                  controller: userController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter Username",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return 'Error';
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 35),
            Consumer<MyProvider>(
              builder: (context, value, child) => value.isLogged == false
                  ? ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          context.read<MyProvider>().setData(
                            userController.text,
                          );
                          context.read<MyProvider>().loginStatus();

                          await Future.delayed(Duration(seconds: 3));
                          Navigator.pushReplacement(
                            // ignore: use_build_context_synchronously
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Username is not matched!")),
                          );
                        }
                      },
                      child: Text("Sign In"),
                    )
                  : CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
