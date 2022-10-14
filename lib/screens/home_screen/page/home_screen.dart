import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_app/screens/details_screen.dart';
import 'package:planet_app/utils/colours.dart';
import 'package:planet_app/utils/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController animationController1;
  late AnimationController animationController2;
  late AnimationController animationController3;
  late AnimationController animationController4;
  late AnimationController animationController5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController1 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
    animationController2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
    animationController3 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
    animationController4 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
    animationController5 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController1.dispose();
    animationController2.dispose();
    animationController3.dispose();
    animationController4.dispose();
    animationController5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Text(
          "GALAXY PLANETS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      height: 2000,
                      width: 280,
                      // color: Colors.yellow,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 180,
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                      right: 0,
                                      child: myContainer(
                                          planetName: "MERCURY",
                                          imageName: "assets/images/mercury.png",
                                          content: data[0]["content"],
                                          distanceToEarth: data[0]["distanceToEarth"],
                                          distanceToSun: data[0]["distanceToSun"])),
                                  Positioned(
                                    left: 0,
                                    child: AnimatedBuilder(
                                      animation: animationController1,
                                      child: Image.asset(
                                        "assets/images/mercury.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      builder: (context, widget) {
                                        return Transform.rotate(
                                          angle: animationController1.value * pi * 2,
                                          child: widget,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 180,
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: myContainer(
                                        planetName: "EARTH",
                                        imageName: "assets/images/earth.png",
                                        content: data[1]["content"],
                                        distanceToEarth: data[1]["distanceToEarth"],
                                        distanceToSun: data[1]["distanceToSun"]),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: AnimatedBuilder(
                                      animation: animationController2,
                                      child: Image.asset(
                                        "assets/images/earth.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      builder: (context, widget) {
                                        return Transform.rotate(
                                          angle: animationController2.value * pi * 2,
                                          child: widget,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 180,
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: myContainer(
                                        planetName: "MARS",
                                        imageName: "assets/images/mars.png",
                                        content: data[2]["content"],
                                        distanceToEarth: data[2]["distanceToEarth"],
                                        distanceToSun: data[2]["distanceToSun"]),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: AnimatedBuilder(
                                      animation: animationController3,
                                      child: Image.asset(
                                        "assets/images/mars.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      builder: (context, widget) {
                                        return Transform.rotate(
                                          angle: animationController3.value * pi * 2,
                                          child: widget,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 180,
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: myContainer(
                                        planetName: "MOON",
                                        imageName: "assets/images/moon.png",
                                        content: data[3]["content"],
                                        distanceToEarth: data[3]["distanceToEarth"],
                                        distanceToSun: data[3]["distanceToSun"]),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: AnimatedBuilder(
                                      animation: animationController4,
                                      child: Image.asset(
                                        "assets/images/moon.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      builder: (context, widget) {
                                        return Transform.rotate(
                                          angle: animationController4.value * pi * 2,
                                          child: widget,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 180,
                              width: double.infinity,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: myContainer(
                                      planetName: "NEPTUNE",
                                      imageName: "assets/images/neptune.png",
                                        content: data[4]["content"],
                                        distanceToEarth: data[4]["distanceToEarth"],
                                        distanceToSun: data[4]["distanceToSun"]
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: AnimatedBuilder(
                                      animation: animationController5,
                                      child: Image.asset(
                                        "assets/images/neptune.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      builder: (context, widget) {
                                        return Transform.rotate(
                                          angle: animationController5.value * pi * 2,
                                          child: widget,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myContainer(
      {required String planetName, required String imageName, required String content, required String distanceToSun, required String distanceToEarth}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              planetName: planetName,
              imageName: imageName,
              content: content,
              distanceToEarth: distanceToEarth,
              distanceToSun: distanceToSun,
            ),
          ),
        );
      },
      child: Container(
        height: 180,
        width: 280,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$planetName",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Milkeyway Galaxy",
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/ic_distance.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "57.9m km",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/images/ic_gravity.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
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
      ),
    );
  }
}
