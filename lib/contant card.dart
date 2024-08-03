import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/app_colors.dart';

class Contantcard extends StatelessWidget {
  const Contantcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: app_colors.lightgreen,
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, ),
            child: Text(
              "positive vibes",
              style: GoogleFonts.inter(
                  color: app_colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '''
        Boost your mood with 
        positive vibes''',
                style: GoogleFonts.inter(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    "assets/Walking the Dog.png",
                    width: 102.11,
                    height: 90.06,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.play_circle,
                  weight: 23,

                  color: Colors.green,
                ),Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text("10 mins",style: GoogleFonts.inter(
                    fontSize: 14,fontWeight: FontWeight.w500
                  ),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
