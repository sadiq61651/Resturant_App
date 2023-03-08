import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

@override
Widget seeMore(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TextButton(
          onPressed: () {},
          child: Text(
            "See more",
            style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                decoration: TextDecoration.underline),
          ))
    ],
  );
}
