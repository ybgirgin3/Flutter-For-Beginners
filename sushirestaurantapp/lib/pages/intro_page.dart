// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushirestaurantapp/components/button.dart';
import 'package:sushirestaurantapp/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            // shop name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                // style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/assets/salmon_eggs.png'),
            ),

            const SizedBox(height: 25),

            // title
            Text(
              'THE TASTE OF JAPANESE FOOD',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            // subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[200],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // get started
            MyButton(
              text: 'Get Started',
              onTap: () {
                // go to menu map
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
