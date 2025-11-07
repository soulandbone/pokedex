import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/presentation/screens/onboarding_2.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.kTitle,
          style: GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 200),
          Image.asset('assets/first_load_screen.png'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              AppStrings.kTodosLosPok,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              AppStrings.kTodosLosPokSubtitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 58,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return OnBoarding2();
                    },
                  ),
                );
              },
              child: Text(
                AppStrings.kContinuar,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
