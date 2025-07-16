import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rishal_ui/controllers/provider.dart';

class PizzaTile extends StatelessWidget {
  const PizzaTile({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<FoodProvider>(context, listen: false).addData();

    return Consumer<FoodProvider>(
      builder: (context, value, child) => GridView.builder(
        itemCount: value.menu.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          final food = value.menu[index];
          return Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(food.image),
                  radius: 60,
                ),
                SizedBox(height: 25),
                //Food Name
                Flexible(
                  child: Text(
                    food.title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.modernAntiqua(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                //food rating
                SizedBox(height: 10),
                RatingStars(
                  value: 5,
                  starOffColor: Colors.grey.shade900,
                  valueLabelVisibility: false,
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
