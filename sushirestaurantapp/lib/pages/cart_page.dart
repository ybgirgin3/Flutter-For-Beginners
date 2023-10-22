// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushirestaurantapp/components/button.dart';
import 'package:sushirestaurantapp/models/food.dart';
import 'package:sushirestaurantapp/models/shop.dart';
import 'package:sushirestaurantapp/themes/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart

  void removeFromCart(Food food, BuildContext context) {
    // get access to the shop
    final shop = context.read<Shop>();

    // remove it
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            // CUSTOMER CART
            Expanded(
              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    // get food from the cart
                    final Food food = value.cart[index];

                    // return list tile
                    return Container(
                      decoration: BoxDecoration(color: Colors.red[100]),
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: ListTile(
                        title: Text(
                          food.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text("\$${food.price}"),
                        trailing: IconButton(
                          onPressed: () => removeFromCart(food, context),
                          icon: Icon(Icons.delete),
                        ),
                      ),
                    );
                  }),
            ),

            // PAY BUTTON
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "Pay Now",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
