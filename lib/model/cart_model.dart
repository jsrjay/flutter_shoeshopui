import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Air Force Max", "9900.00", "lib/images/airforceairmax.png", Colors.green],
    [
      "Air Jorden Air Max",
      "8500.00",
      "lib/images/Airjordenairmax.png",
      Colors.yellow
    ],
    [
      "Air Jorden Basketball",
      "12000.00",
      "lib/images/airjordenbasketball.png",
      Colors.brown
    ],
    [
      "Air Max Sneakers",
      "9900.00",
      "lib/images/airmaxsneakers.png",
      Colors.blue
    ],
    ["Flywire Sneakers", "8500.00", "lib/images/flywire.png", Colors.orange],
    ["Paris Sneaker", "15000.00", "lib/images/parissneaker.png", Colors.purple],
    [
      "Sneakers Skate shoe Puma Sportswear,",
      "7000.00",
      "lib/images/Sneakers Skate shoe Puma Sportswear,.png",
      Colors.lightBlueAccent
    ],
    [
      "Sneakers Skate shoe Nike Dunk",
      "20000.00",
      "lib/images/Sneakers Skate shoe Nike Dunk.png",
      Colors.redAccent
    ],
    [
      "Sneakers Adidas Originals Shoe",
      "6000.00",
      "lib/images/Sneakers Adidas Originals Shoe.png",
      Colors.yellow
    ],
    [
      "Shoe Puma Sneakers Footwear Casual,",
      "4000.00",
      "lib/images/Shoe Puma Sneakers Footwear Casual,.png",
      Colors.lightBlue
    ],
    [
      "Nike Skateboarding Nike Dunk Shoe",
      "12500.00",
      "lib/images/Nike Skateboarding Nike Dunk Shoe.png",
      Colors.deepOrangeAccent
    ],
    [
      "Nike Air Max 97",
      "18000.00",
      "lib/images/Nike Air Max 97.png",
      Colors.lightGreenAccent
    ],
    [
      "Multicolored Adidas running shoes",
      "16000.00",
      "lib/images/multicolored adidas running shoes.png",
      Colors.purple
    ],
    [
      "Football boot Adidas Copa Mundial White Shoe",
      "15000.00",
      "lib/images/Football boot Adidas Copa Mundial White Shoe.png",
      Colors.deepOrangeAccent
    ],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
