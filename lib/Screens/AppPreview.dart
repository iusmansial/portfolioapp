import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:url_launcher/url_launcher.dart';

class Apppreview extends StatelessWidget {
  var height, width;
  Apppreview({required this.height, required this.width});
  final List<String> gameImages = [
    "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
    "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
    "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
    "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
  ];
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: height * 0.5,
                        width: width * 0.9,
                        color: Colors.amber,
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        "Call of Duty Mobile",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "Shooting Game",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Text(
                      "Call of Duty: Mobile is a fast-paced first-person shooter game designed for mobile devices. It features classic multiplayer modes like Team Deathmatch, Battle Royale, and iconic maps from the Call of Duty franchise. With customizable loadouts, ranked matches, and seasonal updates, it delivers a console-quality FPS experience on the go.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.4),
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.6,
                    width: width * 0.9,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // 2 items per row
                        crossAxisSpacing: 10, // Spacing between columns
                        mainAxisSpacing: 10, // Spacing between rows
                      ),
                      itemCount: gameImages.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                          child: Container(
                            color:
                                Colors.grey.shade800, // Placeholder background
                            child: Image.network(
                              gameImages[index],
                              fit: BoxFit
                                  .cover, // Ensures the image covers the container
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: height * 0.88,
              left: 0, // Ensure the container starts from the left edge
              right: 0, // Ensure the container ends at the right edge
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30), // Rounded corners
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 10, sigmaY: 10), // Blur intensity
                  child: GestureDetector(
                    onTap: () => _launchURL('https://www.google.com'),
                    child: Container(
                      height: height * 0.1,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900
                            .withOpacity(0.2), // Semi-transparent overlay
                        borderRadius:
                            BorderRadius.circular(30), // Rounded corners
                        border: Border.all(
                          color: Colors.white
                              .withOpacity(0.2), // Border for glass effect
                          width: 1.5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Download",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.05,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
