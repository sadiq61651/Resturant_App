import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:resturant_app/features/landing/screens/landing_screen.dart';
import 'package:resturant_app/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      themeMode: ThemeMode.light,
      home: const LandingScreen(),
      routes: routes,
    );
  }
}
