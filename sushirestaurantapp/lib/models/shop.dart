import "package:flutter/material.dart";
import "package:sushirestaurantapp/models/food.dart";

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: 'lib/assets/sushi.png',
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "23.00",
        imagePath: 'lib/assets/tuna.png',
        rating: "4.9"),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter method
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
  void removeFromCart(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}
