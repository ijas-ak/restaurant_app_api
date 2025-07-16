import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rishal_ui/controllers/auth_provider.dart';

class UserWelcome extends StatelessWidget {
  const UserWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MyProvider>().getData();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Consumer<MyProvider>(
          builder: (context, value, child) => Text(
            "Hi, ${value.username}",
            style: GoogleFonts.monda(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Center(
                child: Consumer<MyProvider>(
                  builder: (context, value, child) => Text(
                    value.username[0],
                    style: GoogleFonts.bebasNeue(
                      fontSize: 35,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white, width: 1),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
