import 'package:flutter/material.dart';
import 'package:nike_store_ui/components/cart_item.dart';
import 'package:nike_store_ui/models/cart.dart';
import 'package:nike_store_ui/models/shoe.dart';
import 'package:nike_store_ui/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                //get individual shoe
                Shoe individualShoe = value.getUserCart()[index];
                //return the cart item
                return CartItem(
                  shoe: individualShoe,
                );
              },
            )),

            GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentPage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Center(
                        child: Text("Pay Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600))),
                  ),
                ),
              ),
          ],

          //heading
        ),
      ),
    );
  }
}
