import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tapioka/components/button.dart';
import 'package:tapioka/models/food.dart';
import 'package:tapioka/theme/colors.dart';
import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  // food menu
  List foodMenu = [
    // 3Q milk tea
    Food(name: "3Q Milk Tea", price: "60.00", imagePath: "lib/images/3Q_milk_tea.png", rating: "4.9"),

    // peace ice tea
    Food(name: "Peace Ice Tea", price: "50.00", imagePath: "lib/images/peach_ice_tea.png", rating: "4.2"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo', 
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                      'Get 32% Promo', 
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // redeem button
                    MyButton(
                      text: "Redeem", 
                      onTap: () {},
                    ),
                  ],
                ),

                // image
                Image.asset('lib/images/cranberry_soda.png', height: 100,)
              ],
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu", 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          const SizedBox(height: 25),
          // popular food





        ],
      ),

    );
  }
}