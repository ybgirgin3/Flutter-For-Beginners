// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushirestaurantapp/components/button.dart';
import 'package:sushirestaurantapp/models/food.dart';
import 'package:sushirestaurantapp/models/shop.dart';
import 'package:sushirestaurantapp/themes/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  // quantity
  int quantityCount = 0;

  // decrement quantity
  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) {
        quantityCount--;
      }
    });
  }

  // increment quantity
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // add to cart method
  void addToCart() {
    // only add to cart if there is something in the cart
    if (quantityCount > 0) {
      // get access to shop
      final shop = context.read<Shop>();

      // add to cart
      shop.addToCart(widget.food, quantityCount);

      // let the user know it was successfull
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: Text(
            "Successfully added to cart",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            IconButton(
              onPressed: () {
                // pop once to remove dialog
                Navigator.pop(context);

                // pop again to go previous screen
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.done,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[800],
      ),
      body: Column(children: [
        // list view of food details
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                // image
                Image.asset(
                  widget.food.imagePath,
                  height: 200,
                ),

                const SizedBox(width: 10),

                // rating
                Row(
                  children: [
                    // star icon
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),

                    // rating number
                    Text(
                      widget.food.rating,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 10),

                // food name
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                  ),
                ),

                const SizedBox(height: 25),

                // description
                Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),

                Text(
                  "Delicately sliced, fresh Atlantic salmon drapes elegantly over a pillow of perfectly seasoned sushi rice. Its vibrant hue and buttery texture promise an exquisite melt-in-your-mouth experience. Paired with a whisper of wasabi and a side of traditional pickled ginger, our salmon sushi is an ode to the purity and simplicity of authentic Japanese flavors. Indulge in the ocean's bounty with each savory bite.",
                  style: TextStyle(
                    color: Colors.grey[600],
                    height: 2,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),

        // price + quantity + add to cart button
        Container(
          color: primaryColor,
          padding: EdgeInsets.all(25),
          child: Column(children: [
            // price + quantity
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Text(
                  "\$${widget.food.price}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),

                // quantity
                Row(
                  children: [
                    // minus button
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          borderRadius: BorderRadius.circular(40)),
                      child: IconButton(
                        onPressed: decrementQuantity,
                        icon: Icon(Icons.remove, color: Colors.white),
                      ),
                    ),

                    // count
                    SizedBox(
                      width: 40,
                      child: Center(
                        child: Container(
                          child: Text(
                            "$quantityCount",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // plus button
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: IconButton(
                        onPressed: incrementQuantity,
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),

            const SizedBox(height: 25),

            // add to cart button
            MyButton(text: "Add to Cart", onTap: addToCart),
          ]),
        )
      ]),
    );
  }
}
