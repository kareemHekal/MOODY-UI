import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/app_colors.dart';
import '../contant card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeTab extends StatelessWidget {
  final _controller = PageController();

  HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 65,
              top: 20,
              bottom: 12,
            ),
            child: Row(
              children: [
                Text(
                  "Hello,",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Sara Rosa",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 65, bottom: 20, right: 20),
            child: Row(
              children: [
                Text(
                  "How are you feeling today ?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Frame 19.png",
                width: 326,
                height: 88,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65, top: 20, right: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Feature ",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "see more >",
                      style: GoogleFonts.inter(
                        color: app_colors.dark_green,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: PageView(
              controller: _controller,
              children: [
                Contantcard(),
                Contantcard(),
                Contantcard(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xff98A2B3),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65, top: 20, right: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Exercise",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "see more >",
                      style: GoogleFonts.inter(
                        color: app_colors.dark_green,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/Frame 31.png",
                    ),
                    SizedBox(height: 10), // Add space between images
                    Image.asset(
                      "assets/Frame 35.png",
                    ),
                  ],
                ),
                SizedBox(width: 20), // Add space between columns
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/Frame 34.png",
                    ),
                    SizedBox(height: 10), // Add space between images
                    Image.asset(
                      "assets/Frame 33.png",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}