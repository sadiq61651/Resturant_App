import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            style: GoogleFonts.lato(fontSize: 30),
          ),
        ),
        Neumorphic(
          style: const NeumorphicStyle(
              shape: NeumorphicShape.convex, intensity: 0.1),
          child: Text("Something Delicious! ",
              style: GoogleFonts.lato(
                fontSize: 30,
              )),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
