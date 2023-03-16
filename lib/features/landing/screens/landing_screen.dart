import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/features/home/screens/home_screen.dart';

import '../../../utils/my_font_size.dart';

class LandingScreen extends StatelessWidget {
  static String path = "landing-screen";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.only(top: screenSize.height * 0.1),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/products_items/bg.jpg"))),
        child: Column(
          children: [
            Text("Food Go!",
                style: GoogleFonts.shanti(
                    fontWeight: FontWeight.bold,
                    fontSize: MyFontSize.extraLarge)),
            Center(
              child: Text("Get Your Favorite food from here",
                  style: GoogleFonts.nanumGothic(
                      fontSize: MyFontSize.small, wordSpacing: 2)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: screenSize.height * 0.04),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 20,
            )
          ]),
          child: FloatingActionButton(
              backgroundColor: Colors.red,
              child: const Icon(Icons.arrow_forward_ios,
                  color: Colors.white, size: 30),
              onPressed: () => Navigator.pushNamed(context, HomeScreen.path)),
        ),
      ),
    );
  }
}
