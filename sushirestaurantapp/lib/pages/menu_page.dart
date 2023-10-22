// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushirestaurantapp/components/button.dart';
import 'package:sushirestaurantapp/components/food_tile.dart';
import 'package:sushirestaurantapp/models/shop.dart';
import 'package:sushirestaurantapp/pages/food_details_page.dart';
import 'package:sushirestaurantapp/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // navigate to food item details page
  void navigateToFoodDetails(int index) {
    // get the shop and it's menu
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetailsPage(
            food: foodMenu[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // promo message
                Column(
                  children: [
                    Text(
                      'Get 30% Promotion',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // redeem button
                    MyButton(
                      text: 'Redeem',
                      onTap: () {},
                    )
                  ],
                ),
                // image
                Image.asset(
                  'lib/assets/many_sushi.png',
                  height: 100,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
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

          // menu list
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
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
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // popular food
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            // margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image
                Row(
                  children: [
                    Image.asset(
                      'lib/assets/salmon_eggs.png',
                      height: 60,
                    ),

                    const SizedBox(width: 20),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name
                        Text(
                          'Salmon Eggs',
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),

                        const SizedBox(height: 10),

                        // price
                        Text(
                          '\$21.00',
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 18, color: Colors.grey[500]),
                        )
                      ],
                    ),
                  ],
                ),

                // heart
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
