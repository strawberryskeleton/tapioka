import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    // 3Q milk tea
    Food(
      name: "3Q Milk Tea",
      price: "60.00", 
      imagePath: "lib/images/3Q_milk_tea.png", 
      rating: "4.9",
      description: "Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms.",
    ),

    // peach ice tea
    Food(
      name: "Peach Ice Tea", 
      price: "50.00", 
      imagePath: "lib/images/peach_ice_tea.png", 
      rating: "4.2",
      description: "Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms. Handpicked, farm-fresh tapioca balls flavourfully put in the tea made with dairy obtained from organic farms.",
    ),

    // ADD REST OF THE ITEMS
  ];

  // customer cart
  List<Food> _cart = [];


  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart (Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }

}