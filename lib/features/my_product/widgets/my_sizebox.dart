import 'package:flutter/material.dart';

class MySizeBox extends StatelessWidget {
  final double value;
  const MySizeBox({Key? key, this.value = 0.022}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(height: screenSize.height * value);
  }
}
