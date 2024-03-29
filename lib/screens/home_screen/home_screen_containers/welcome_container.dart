import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class WelcomeContainer extends Container {
  WelcomeContainer({super.key});

  //TODO: CHECK IF SINGLE "d" PARAMETER WORKS FOR DOUBLE DIGIT DAYS
  final String date = DateFormat("MMMM d, yyyy").format(DateTime.now());
  final String day = DateFormat("EEEE").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Displays "Month Day, Year"
          Text(date,
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w500)),
          const SizedBox(height: 3),

          //Displays Day of the Week
          Text(day,
              style:
                  GoogleFonts.lato(fontSize: 70, fontWeight: FontWeight.w900)),
          const SizedBox(height: 2),
          Text('341042810', style: GoogleFonts.lato(fontSize: 15)),
        ],
      ),
    );
  }
}
