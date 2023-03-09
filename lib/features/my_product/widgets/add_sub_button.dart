import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class AddSubButton extends StatelessWidget {
  final String price;
  const AddSubButton({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 1;
    int priceHolder = int.parse(price.split(r"$")[1]);
    return StatefulBuilder(
      builder: (context, setState) => Column(children: [
        Text(
          "\$${priceHolder.toString()}",
          style: GoogleFonts.lato(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const SizedBox(height: 10),
        Neumorphic(
          style: NeumorphicStyle(
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),
          child: (Column(
            children: [
              IconButton(
                  onPressed: () {
                    count++;
                    priceHolder = priceHolder + int.parse(price.split(r"$")[1]);
                    setState(() {});
                  },
                  icon: const Icon(Icons.add)),
              Text(count.toString()),
              IconButton(
                  onPressed: () {
                    if (count != 1) {
                      count--;
                      priceHolder =
                          priceHolder - int.parse(price.split(r"$")[1]);

                      setState(() {});
                    }
                  },
                  icon: const Icon(Icons.minimize)),
            ],
          )),
        ),
      ]),
    );
  }
}
