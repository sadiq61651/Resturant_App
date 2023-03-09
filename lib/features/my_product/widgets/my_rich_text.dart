import 'package:flutter/material.dart';

@override
Widget myRichText(BuildContext context, String text) {
  return Row(
    children: [
      const Icon(
        Icons.circle,
        color: Colors.red,
        size: 10,
      ),
      Text("  $text", style: const TextStyle(fontSize: 15, color: Colors.black))
    ],
  );
}
