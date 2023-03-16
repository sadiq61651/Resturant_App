import 'package:flutter/material.dart';
import 'package:resturant_app/utils/my_font_size.dart';

@override
Widget myRichText(BuildContext context, String text) {
  return Row(
    children: [
      const Icon(
        Icons.circle,
        color: Colors.red,
        size: 10,
      ),
      Text("  $text",
          style:
              TextStyle(fontSize: MyFontSize.smallMedium, color: Colors.black))
    ],
  );
}
