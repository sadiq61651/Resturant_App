import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/features/home/screens/home_screen.dart';

class LandingScreen extends StatelessWidget {
  static String path = "landing-screen";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    "https://images.unsplash.com/photo-1604259596863-57153177d40b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"))),
        child: Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 30),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Column(
                    children: [
                      Text("Food Go!",
                          style: GoogleFonts.shanti(
                              fontWeight: FontWeight.bold, fontSize: 38)),
                      Center(
                        child: Text("Get Your Favorite food from here",
                            style: GoogleFonts.nanumGothic(
                                fontSize: 12, wordSpacing: 2)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Container(
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
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.path)),
            ),
          ),
        ));
  }
}