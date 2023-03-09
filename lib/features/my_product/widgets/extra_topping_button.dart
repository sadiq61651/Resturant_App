import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ExtraToppingButton extends StatelessWidget {
  final String text;
  final bool isSelectFlag;
  const ExtraToppingButton({
    Key? key,
    required this.text,
    required this.isSelectFlag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool flagHolder = isSelectFlag;
    return StatefulBuilder(
      builder: (context, setState) => NeumorphicButton(
        onPressed: () {
          flagHolder = !flagHolder;
          setState(() {});
        },
        style: NeumorphicStyle(
            color: flagHolder ? Colors.red : Colors.transparent,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
        child: Text(" $text ",
            style: TextStyle(color: flagHolder ? Colors.white : Colors.red)),
      ),
    );
  }
}
