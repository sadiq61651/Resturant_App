import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/features/my_product/widgets/my_sizebox.dart';
import 'package:resturant_app/utils/my_font_size.dart';

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
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: priceHolder >= 100
                  ? MyFontSize.large
                  : MyFontSize.extraLarge),
        ),
        const MySizeBox(),
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
              Text(count.toString(),
                  style: GoogleFonts.lato(fontSize: MyFontSize.medium)),
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
