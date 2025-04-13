import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:portfolioapp/Model%20Class/ModelClass.dart';
import 'package:url_launcher/url_launcher.dart';

class Apppreview extends StatelessWidget {
  final double height, width;
  final DataApp app; // Accept the DataApp object

  Apppreview({
    required this.height,
    required this.width,
    required this.app, // Initialize it
  });

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
                  SizedBox(height: height * 0.1),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: height * 0.5,
                        width: width * 0.9,
                        color: Colors.amber,
                        child: Image.network(
                          app.mainImage, // Use the mainImage from the app
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        app.title, // Use the title from the app
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.022,
                        ),
                      ),
                      Text(
                        app.category, // Use the category from the app
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: height * 0.016,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    child: Text(
                      app.description, // Use the description from the app
                      style: TextStyle(
                        color: Colors.white.withOpacity(.4),
                        fontWeight: FontWeight.normal,
                        fontSize: height * 0.015,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      height: height * 0.6,
                      width: width * 0.9,
                      child: CarouselSlider(
                        items:
                            app.extraImages // Use the extraImages from the app
                                .map(
                                  (imageUrl) => ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      imageUrl,
                                      fit: BoxFit.fitHeight,
                                      width: width * 0.9,
                                    ),
                                  ),
                                )
                                .toList(),
                        options: CarouselOptions(
                          height: height * 0.6,
                          viewportFraction: 0.65,
                          // enlargeCenterPage: true,
                          autoPlay: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
            Positioned(
              top: height * 0.86,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: GestureDetector(
                    onTap: () =>
                        _launchURL(app.link), // Use the link from the app
                    child: Container(
                      height: height * 0.1,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
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
