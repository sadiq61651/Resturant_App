import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

@override
Widget myProductsList(BuildContext context, list, category) {
  return SizedBox(
    height: 295.0,
    width: 333.0,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (list[index].category == category) {
            return Card(
              shadowColor: Colors.transparent.withOpacity(0.2),
              color: Colors.transparent,
              child: Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 100,
                      backgroundImage: AssetImage(list[index].imageUrl)),
                  Text(
                    list[index].name,
                    style: GoogleFonts.lato(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    list[index].price,
                    style: GoogleFonts.lato(color: Colors.red, fontSize: 18),
                  )
                ],
              ),
            );
          }
          return const SizedBox();
        },
        itemCount: list.length),
  );
}
