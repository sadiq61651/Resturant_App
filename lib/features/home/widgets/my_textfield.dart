import 'package:flutter_neumorphic/flutter_neumorphic.dart';

@override
Widget myTextField(BuildContext context) {
  return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
          shape: NeumorphicShape.convex),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none, width: 0),
                borderRadius: BorderRadius.circular(20)),
            hintText: "Search catagoris..",
            prefixIcon: const Icon(Icons.search)),
      ));
}
