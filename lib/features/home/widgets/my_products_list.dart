import 'dart:io';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../my_product/screen/my_product_screen.dart';

@override
Widget myProductsList(BuildContext context, list, category) {
  Size screenSize = MediaQuery.of(context).size;
  return SizedBox(
    height: screenSize.height * 0.37,
    width: screenSize.width * 0.8,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (list[index].category == category) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyProductScreen.path,
                    arguments: list[index]);
                sleep(const Duration(milliseconds: 250));
              },
              child: Card(
                shadowColor: Colors.transparent.withOpacity(0.2),
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: screenSize.height * 0.12,
                          backgroundImage: AssetImage(list[index].imageUrl)),
                      Text(
                        list[index].name,
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: screenSize.height * 0.025),
                      ),
                      Text(
                        list[index].price,
                        style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize: screenSize.height * 0.023),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          return const SizedBox();
        },
        itemCount: list.length),
  );
}
