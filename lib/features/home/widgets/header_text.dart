import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/utils/my_font_size.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Neumorphic(
          style: const NeumorphicStyle(
            intensity: 0.2,
            shape: NeumorphicShape.concave,
          ),
          child: Text(
            " Let's Find",
            style: GoogleFonts.lato(fontSize: screenSize.height * 0.038),
          ),
        ),
        Neumorphic(
          style: const NeumorphicStyle(
              shape: NeumorphicShape.convex, intensity: 0.1),
          child: Text("Something Delicious! ",
              style: GoogleFonts.lato(
                fontSize: MyFontSize.large,
              )),
        ),
        SizedBox(
          height: screenSize.height * 0.02,
        )
      ],
    );
  }
}
