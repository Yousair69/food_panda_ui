import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_ui/components/resturant.dart';
import 'package:food_panda_ui/constants/colors.dart';
import 'package:food_panda_ui/constants/constants.dart';
import 'package:food_panda_ui/model/panda_pick_model/panda_pick_helper.dart';
import 'package:food_panda_ui/model/panda_pick_model/panda_pick_item_model.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nala Stop, Karachi'),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 10),
                    placeholder: 'Search for Shop and Resturant',
                    prefix: const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff7b7b7b),
                      ),
                    ),
                    style: const TextStyle(
                        color: Color(0xff707070),
                        fontSize: 15,
                        fontFamily: Regular),
                    decoration: BoxDecoration(
                        color: const Color(0xfff7f7f7),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: MyColors.primaryColor),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://live.staticflickr.com/27/48893064_afe79fae08.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.help_outline_outlined),
              title: Text(
                'Help Center',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text(
                'More',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text(
                'Sign Up or Login',
                style: TextStyle(fontFamily: Medium, color: Colors.black),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: height * .18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image(
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRq1mQLx2tcZ4owspN_OxqcHZBIc0f1F6NfiqBYgGnwEkdc3tbUGKETWmBH2PNppLs-dJJAt92vs2I16Eno7ks'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Food Delivery',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: Bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Order from your favourite \nResturants and Home Chiefs',
                              style: TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.w500,
                                fontFamily: Medium,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: height * .25,
                        decoration: BoxDecoration(
                          color: const Color(0xfffed271),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/images/pandamart.jpg'),
                              ),
                              Positioned(
                                bottom: 15,
                                left: 0,
                                child: Text(
                                  'Pandamart',
                                  style: TextStyle(
                                      color: blackColor,
                                      fontFamily: Bold,
                                      fontSize: 18),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Text(
                                  'Panda20 for 20%Of',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                      fontFamily: Medium,
                                      height: 1,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: height * .15,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xffef9fc4),
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image:
                                        AssetImage('assets/images/food.jpg'))),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pick_Up',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Upto 50% off',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Medium,
                                        height: 1,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 05),
                          Container(
                            height: height * .1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff85bfff),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shops',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontFamily: Bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    'Everyday Essential',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Medium,
                                        height: 1,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            const  Text(
                'Your daily deals',
                style: TextStyle(
                    color: blackColor, fontSize: 15, fontFamily: Bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: height * .270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: PandaPickHelper.itemCount,
                      itemBuilder: (context, index) {
                        PandaPickItemModel model =
                            PandaPickHelper.getStatusItem(index);
                        return ResturantScreen(
                            name: model.name,
                            image: model.image,
                            subtitle: model.subtitle,
                            rating: model.rating,
                            deliveryTime: model.deliveryPrice,
                            remainingTime: model.remainingTime,
                            deliveryPrice: model.deliveryPrice,
                            totalRating: model.totalRating);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
