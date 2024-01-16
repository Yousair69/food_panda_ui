import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_panda_ui/constants/colors.dart';
import 'package:food_panda_ui/constants/constants.dart';
import 'package:food_panda_ui/dashboard/detail-screen.dart';
import 'package:food_panda_ui/dashboard/home_screen.dart';

class ResturantScreen extends StatefulWidget {
  final String name,
      image,
      remainingTime,
      subtitle,
      rating,
      deliveryTime,
      totalRating,
      deliveryPrice;

  ResturantScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.subtitle,
      required this.rating,
      required this.deliveryTime,
      required this.remainingTime,
      required this.deliveryPrice,
      required this.totalRating});

  @override
  State<ResturantScreen> createState() => _ResturantScreenState();
}

class _ResturantScreenState extends State<ResturantScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) =>
                    DetailScreen(name: widget.name, image: widget.image)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: height * .3,
          width: width * .6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => HomeScreen()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        fit: BoxFit.cover,
                        height: height * .2,
                        image: AssetImage(widget.image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: MyColors.primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 7, left: 5, right: 10, bottom: 7),
                        child: Text(
                          'Upto 20% off',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: Bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xfffffcff),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Text(
                            widget.remainingTime,
                            style: const TextStyle(
                                fontSize: 14,
                                fontFamily: Bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontFamily: Bold,
                        fontSize: 14,
                        color: Color(0xff323232)),
                  ),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: ((context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            )),
                        itemCount: 1,
                        itemSize: 18,
                      ),
                      Text(
                        " " + widget.rating,
                        style: TextStyle(
                            color: Color(0xff323232),
                            fontSize: 12,
                            fontFamily: Bold),
                      ),
                      Text(
                        "  (" + widget.totalRating + ")",
                        style: TextStyle(
                            color: Color(0xffa9a9a9),
                            fontSize: 12,
                            fontFamily: Light),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 03),
              Text(
                r"$ • " + widget.subtitle,
                style: const TextStyle(
                    color: Color(0xff707070),
                    fontSize: 12,
                    fontFamily: Regular),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.directions_bike,
                      size: 14,
                      color: MyColors.primaryColor,
                    ),
                    Text(
                      r"  Rs  " + widget.deliveryPrice,
                      style: const TextStyle(
                          color: Color(0xff707070),
                          fontSize: 12,
                          fontFamily: Regular),
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
