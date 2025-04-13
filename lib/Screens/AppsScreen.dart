import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolioapp/Model%20Class/ModelClass.dart';
import 'dart:ui';

import 'package:portfolioapp/Screens/AppPreview.dart';

class Appsscreen extends StatelessWidget {
  var height, width;
  Appsscreen({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            // stops: [.3, 3, .0],
            colors: [
              Colors.black,
              const Color.fromARGB(255, 14, 57, 91),
              const Color.fromARGB(255, 8, 36, 60)
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: height * 0.2,
              width: width,
              // color: Colors.pink,
              child: Stack(
                children: [
                  Positioned(
                    top: height * 0.055,
                    child: CircleAvatar(
                      radius: height * 0.025,
                      backgroundColor: Colors.amber,
                      child: ClipOval(
                        child: Image.network(
                          "https://res.cloudinary.com/dkzn9hiks/image/upload/v1744425403/Screenshot_2025-04-10-20-06-30-83_1c337646f29875672b5a61192b9010f9_gtgofu.jpg",
                          fit: BoxFit
                              .cover, // Ensures the image covers the circular area
                          width: height *
                              0.05, // Match the diameter of the CircleAvatar
                          height: height * 0.05,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.06,
                    left: width * 0.13,
                    child: Text(
                      "Welcome here",
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: height * 0.014,
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.08,
                    left: width * 0.13,
                    child: Text(
                      "Hey, visitor",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: height * 0.016,
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.13,
                    left: width * 0.02,
                    child: Text(
                      "Lets Explore Some Apps",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: height * 0.018,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height * 0.6,
              width: width,
              // color: Colors.red,
              child: CarouselSlider(
                items: appslist
                    .map(
                      (app) => ClipRRect(
                        borderRadius:
                            BorderRadius.circular(40), // Rounded corners
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Apppreview(
                                  height: height,
                                  width: width,
                                  app: app,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            color: Colors.black,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.network(
                                    app.mainImage,
                                    fit: BoxFit
                                        .cover, // Ensures the image covers the container
                                  ),
                                ),
                                Positioned(
                                  left: width * 0.1,
                                  bottom: height * 0.01,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        40), // Rounded corners
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 10,
                                          sigmaY: 10), // Blur intensity
                                      child: Container(
                                        height: height * 0.07,
                                        width: width * 0.6,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                                  255, 18, 59, 93)
                                              .withOpacity(
                                                  0.4), // Darker semi-transparent overlay
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          border: Border.all(
                                            color: Colors.white.withOpacity(
                                                0.3), // Border for glass effect
                                            width: 1.5,
                                          ),
                                        ),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            // crossAxisAlignment: cros,
                                            children: [
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Wrap(
                                                direction: Axis.vertical,
                                                children: [
                                                  Text(
                                                    app.title,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: height * 0.016,
                                                    ),
                                                  ),
                                                  Text(
                                                    app.category,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: height * 0.012,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons
                                                    .arrow_circle_right_outlined,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  height: height * 0.5, // Adjust height to match the container
                  viewportFraction:
                      0.8, // Adjust to control spacing between items
                  enlargeCenterPage: true, // Makes the center item larger
                ),
              ),
            ),
            Container(
              height: height * 0.2,
              width: width,
              // color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
