import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.08,
      child: NeumorphicButton(
        onPressed: () {},
        style: NeumorphicStyle(
            color: Colors.red,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
        child: const Center(
            child: Text("ADD TO CART ", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
