import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_ui/components/resturant.dart';
import 'package:food_panda_ui/constants/colors.dart';
import 'package:food_panda_ui/constants/constants.dart';
import 'package:food_panda_ui/model/exclusive_panda_model/exclusive_item_model.dart';
import 'package:food_panda_ui/model/exclusive_panda_model/exclusivehelper.dart';
import 'package:food_panda_ui/model/panda_pick_model/panda_pick_helper.dart';
import 'package:food_panda_ui/model/panda_pick_model/panda_pick_item_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
        text: 'Search for restaurant,cuisones, and dishes');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Delivery'),
        actions: const [
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 10,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: CupertinoTextField(
                  controller: _textController,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  placeholder: "Search for resturant & cuisines",
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Color(0xff7b7b7b),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: const Color(0xfff7f7f7),
                      borderRadius: BorderRadius.circular(50)),
                  style: const TextStyle(
                      color: Color(0xff707070),
                      fontSize: 12,
                      fontFamily: Regular),
                )),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.filter_list_outlined,
                  color: MyColors.primaryColor,
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Panda Pick',
                style: TextStyle(
                    color: Color(0xff323232), fontSize: 15, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .278,
                  child: ListView.builder(
                      itemCount: PandaPickHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        PandaPickItemModel model =
                            PandaPickHelper.getStatusItem(index);
                        return ResturantScreen(
                          name: model.name,
                          image: model.image,
                          remainingTime: model.remainingTime,
                          totalRating: model.totalRating,
                          subtitle: model.subtitle,
                          rating: model.rating,
                          deliveryTime: model.remainingTime,
                          deliveryPrice: model.deliveryPrice,
                        );
                      }),
                ),
              ),
              const Text(
                'Panda exclusives',
                style: TextStyle(
                    color: Color(0xff323232), fontSize: 15, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .278,
                  child: ListView.builder(
                      itemCount: ExclusiveHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        ExclusiveItemModel model =
                            ExclusiveHelper.getStatusItem(index);
                        return ResturantScreen(
                          name: model.name,
                          image: model.image,
                          remainingTime: model.remainingTime,
                          totalRating: model.totalRating,
                          subtitle: model.subtitle,
                          rating: model.rating,
                          deliveryTime: model.remainingTime,
                          deliveryPrice: model.deliveryPrice,
                        );
                      }),
                ),
              ),
              Text(
                'All Restuarent',
                style: TextStyle(
                    color: Color(0xff323232), fontSize: 15, fontFamily: Bold),
              ),
              Container(
                height: height * .3,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                    itemCount: ExclusiveHelper.itemCount,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      ExclusiveItemModel model =
                          ExclusiveHelper.getStatusItem(index);
                      return ResturantScreen(
                        name: model.name,
                        image: model.image,
                        remainingTime: model.remainingTime,
                        totalRating: model.totalRating,
                        subtitle: model.subtitle,
                        rating: model.rating,
                        deliveryTime: model.remainingTime,
                        deliveryPrice: model.deliveryPrice,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
