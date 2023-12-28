import 'package:flutter/material.dart';
import 'package:nike_store_ui/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "zoom FREAK",
        price: "999",
        description: "The forward-thinking design of his latest signature shoe.",
        imagePath: "lib/images/shoe_1.png"),

      Shoe(
        name: "Air Jordon",
        price: "799",
        description: "You've got the hops and the speed-lace up in shoes that enhance performance.",
        imagePath: "lib/images/shoe_2.png"),

      Shoe(
        name: "KD Treys",
        price: "229",
        description: "'A secure midfoot strap is suited for scoring binges and defensive booms.",
        imagePath: "lib/images/shoe_3.png"),

      Shoe(
        name: "Air MAX 007",
        price: "1399",
        description: "Bouncy cushioning is paired with soft yet supportive foam.",
        imagePath: "lib/images/shoe_4.png"),

      Shoe(
        name: "Kyrie 7",
        price: "1099",
        description: "The class you need.",
        imagePath: "lib/images/shoe_5.png"),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
    List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
