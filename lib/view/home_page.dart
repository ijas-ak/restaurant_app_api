import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rishal_ui/view/user_welcome.dart';
import 'package:rishal_ui/view/widgets/category_tile.dart';
import 'package:rishal_ui/view/widgets/food_card.dart';
import 'package:rishal_ui/view/widgets/pizza_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(142, 35, 35, 36),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                UserWelcome(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Ready to cook for dinner?",
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FoodCard(),
                SizedBox(height: 20),
                TabBar(
                  dividerColor: Colors.black,
                  tabs: [
                    Tab(icon: Icon(Icons.restaurant)),
                    Tab(icon: Icon(Icons.local_pizza)),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Available Food",
                      style: GoogleFonts.baloo2(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text("See All", style: GoogleFonts.lato(fontSize: 16)),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [CategoryTile(), PizzaTile()]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
