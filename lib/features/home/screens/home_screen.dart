import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:resturant_app/features/home/widgets/bottom_navigation_bar.dart';
import '../../../common/model/products_model.dart';
import '../../../common/data/products_data.dart';
import '../widgets/header_text.dart';
import '../widgets/my_products_list.dart';
import '../widgets/my_textfield.dart';

class HomeScreen extends StatefulWidget {
  static String path = "home-screen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<ProductDataModel> list = [];
  String _category = "food";
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    insertData();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  updateState() => setState(() {});

  void insertData() {
    for (var i = 0; i < productData.length; i++) {
      ProductDataModel model = ProductDataModel.fromMap(productData[i]);
      list.add(model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
                "https://lh3.googleusercontent.com/a/AGNmyxY5oDlL0mkmG3oB0GFQUqo-EXv3fuapWqmTHS5v=s288"),
          ),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const HeaderText(),
              myTextField(context),
              const SizedBox(height: 20),
              TabBar(
                  onTap: (value) {
                    if (value == 0) _category = "food";
                    if (value == 1) _category = "drink";
                    if (value == 2) _category = "snack";
                    if (value == 3) _category = "sauce";
                    setState(() {});
                  },
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  controller: _tabController,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: "Foods",
                    ),
                    Tab(
                      text: "Drinks",
                    ),
                    Tab(
                      text: "Snacks",
                    ),
                    Tab(
                      text: "Sauce",
                    ),
                  ]),
              myProductsList(context, list, _category)
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
      drawer: const Drawer(),
    );
  }
}
