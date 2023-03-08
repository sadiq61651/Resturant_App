import 'package:flutter/material.dart';
import 'package:resturant_app/features/home/screens/home_screen.dart';
import 'package:resturant_app/features/landing/screens/landing_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  LandingScreen.path: (context) => const LandingScreen(),
  HomeScreen.path: (context) => const HomeScreen(),
};
