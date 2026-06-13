import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/button.dart';
import '../models/food.dart';
import '../models/shop.dart';
import '../theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart function
  void removeFromCart (Food food, BuildContext context) {
    // get shop access
    final shop = context.read<Shop>();

    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text("My Cart"),
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),

        body: Column(
          children: [
            // CART ITEMS
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // get food from cart
                  final Food food = value.cart[index];
              
                  // get food name + price
                  final String foodName = food.name;
                  final String foodPrice = food.price;
              
                  // return list tile
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    margin: const EdgeInsetsGeometry.only(left: 20, top: 20, right: 20),
                    // foregroundDecoration: primaryColor,
                    child: ListTile(
                      title: Text(foodName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      subtitle: Text(foodPrice, style: TextStyle(color: Colors.grey[200]),),
                      trailing: IconButton(
                        onPressed: () => removeFromCart(food, context), 
                        icon: Icon(Icons.delete, color: Colors.grey[300],),
                      ),
                    ),
                  );

                },
              ),
            ),

            // CART TOTAL
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "Order Now", 
                onTap: () {
                  Navigator.pushNamed(context, '/orderpage');
                },
              ),
            )
            
          ],
        ),
      )
    );
  }
}