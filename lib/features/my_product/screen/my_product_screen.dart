import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/common/buttons/custom_button.dart';
import 'package:resturant_app/common/model/products_model.dart';
import 'package:resturant_app/features/my_product/widgets/add_sub_button.dart';
import 'package:resturant_app/features/my_product/widgets/extra_topping_button.dart';
import 'package:resturant_app/features/my_product/widgets/my_rich_text.dart';
import 'package:resturant_app/features/my_product/widgets/stars_and_timing.dart';
import 'package:resturant_app/utils/my_font_size.dart';

import '../widgets/my_sizebox.dart';

class MyProductScreen extends StatelessWidget {
  static String path = "my-product-screen";
  const MyProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFaviorte = false;
    Size screenSize = MediaQuery.of(context).size;
    ProductDataModel dataModel =
        ModalRoute.of(context)!.settings.arguments as ProductDataModel;
    return Scaffold(
      appBar: NeumorphicAppBar(actions: [
        StatefulBuilder(
          builder: (context, setState) => IconButton(
              onPressed: () => setState(() => isFaviorte = !isFaviorte),
              icon: NeumorphicIcon(Icons.favorite,
                  size: screenSize.height * 0.04,
                  style: NeumorphicStyle(
                    color:
                        isFaviorte ? Colors.red : Colors.red.withOpacity(0.1),
                  ))),
        ),
      ]),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 15.0, bottom: 15, right: 8, left: 15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Neumorphic(
              style: const NeumorphicStyle(
                  shape: NeumorphicShape.concave, intensity: 0.1),
              child: Text(" ${dataModel.name} ",
                  style: GoogleFonts.lato(
                      fontSize: MyFontSize.extraLarge,
                      fontWeight: FontWeight.bold)),
            ),
            const MySizeBox(),
            Neumorphic(
              style: const NeumorphicStyle(
                  shape: NeumorphicShape.convex, intensity: 0.1),
              child: Text("${dataModel.description} ",
                  style: GoogleFonts.lato(
                    fontSize: MyFontSize.small,
                  )),
            ),
            const MySizeBox(),
            Row(children: [
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: screenSize.width * 0.36,
                  child: Image.asset(dataModel.imageUrl)),
              const SizedBox(width: 5),
              AddSubButton(price: dataModel.price.split(".")[0])
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myRichText(context, "Tomato"),
                myRichText(context, "Red Onion"),
                myRichText(context, "Fish"),
                myRichText(context, "Pitted"),
              ],
            ),
            const MySizeBox(),
            Text(
              "Add Ext'ra Topping",
              style: GoogleFonts.lato(fontSize: MyFontSize.large),
            ),
            const MySizeBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ExtraToppingButton(text: "Paper", isSelectFlag: true),
                ExtraToppingButton(text: "Salt", isSelectFlag: false),
                ExtraToppingButton(text: "Souce", isSelectFlag: false),
                ExtraToppingButton(text: "Tomato", isSelectFlag: false),
              ],
            ),
            const MySizeBox(),
            const StarsAndTiming(),
            const MySizeBox(),
            Center(
              child: Container(
                  constraints: BoxConstraints(maxWidth: screenSize.width * 0.9),
                  child: const CustomButton()),
            ),
          ]),
        ),
      ),
    );
  }
}
