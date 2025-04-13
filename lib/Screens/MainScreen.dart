import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:portfolioapp/Screens/AppsScreen.dart'; // Required for ImageFilter

class Mainscreen extends StatefulWidget {
  var height, width;
  Mainscreen({required this.height, required this.width});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            height: widget.height,
            width: widget.width,
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
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter:
                  ImageFilter.blur(sigmaX: 20, sigmaY: 10), // Blur intensity
              child: Container(
                color: Colors.black.withOpacity(.3), // Transparent overlay
              ),
            ),
          ),
          // Foreground content
          Positioned(
            left: widget.width * 0.25,
            top: widget.height * 0.15,
            child: Container(
              height: widget.height * .3,
              width: widget.width * .75,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(100),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://res.cloudinary.com/dkzn9hiks/image/upload/v1744425403/Screenshot_2025-04-10-20-06-30-83_1c337646f29875672b5a61192b9010f9_gtgofu.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Software Engineer ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: widget.height * 0.03,
                      shadows: [Shadow(color: Colors.black, blurRadius: .5)]),
                ),
              ),
            ),
          ),
          Positioned(
            top: widget.height * 0.48,
            left: widget.width * 0.05,
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  "Usman Hameed",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: widget.height * 0.047,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: widget.height * .1,
                  width: widget.width * .85,
                  // color: Colors.blue,
                  child: Text(
                    "I’ve worked with Python for machine learning and focused mainly on app development using Flutter.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: widget.height * 0.018,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: widget.height * 0.7,
            child: Container(
              height: widget.height * .1,
              width: widget.width * .7,
              decoration: BoxDecoration(
                  // color: Colors.blue,
                  border: Border.all(color: Colors.white),
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(100))),
              child: Center(
                child: Text(
                  "2 works",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: widget.height * 0.032,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: widget.width * 0.1,
            top: widget.height * 0.85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: GestureDetector(
                onTap: () {
                  // Navigate to AppsScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Appsscreen(
                          height: widget.height, width: widget.width),
                    ),
                  );
                },
                child: Container(
                  height: widget.height * 0.13,
                  width: widget.width * 0.8,
                  color: Colors.black.withOpacity(.3),
                  child: Center(
                    child: Text(
                      "Discover all",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.height * 0.03,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
