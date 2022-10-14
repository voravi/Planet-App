import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planet_app/utils/colours.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({
    Key? key,
    required this.planetName,
    required this.imageName,
    required this.content,
    required this.distanceToSun,
    required this.distanceToEarth,
  }) : super(key: key);

  String planetName;
  String imageName;
  String content;
  String distanceToSun;
  String distanceToEarth;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            height: 310,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70, right: 10, left: 10),
                  padding: EdgeInsets.all(25),
                  height: 220,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Text(
                        "${widget.planetName}",
                        style: TextStyle(color: Colors.white, fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Milkeyway Galaxy",
                        style: TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/ic_distance.png",
                            height: 23,
                            width: 23,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "57.9m km",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/images/ic_gravity.png",
                            height: 23,
                            width: 23,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "3.7m/s2",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 400,
                            color: bgColor,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Welcome to ${widget.planetName}",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  widget.imageName,
                                  height: 85,
                                  width: 85,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Distance to Sun",
                                  style: TextStyle(color: textColor, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.distanceToSun,
                                  style: TextStyle(fontSize: 26, color: colorWhite, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Distance to Earth",
                                  style: TextStyle(color: textColor, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  widget.distanceToEarth,
                                  style: TextStyle(fontSize: 26, color: colorWhite, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: AnimatedBuilder(
                    animation: animationController,
                    child: Image.asset(
                      widget.imageName,
                      height: 130,
                      width: 130,
                    ),
                    builder: (context, widget) {
                      return Transform.rotate(
                        angle: animationController.value * pi * 2,
                        child: widget,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(
            "OVERVIEW",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.all(20),
            child: Text(
              widget.content,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "BACK",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
