import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quraan_app/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          Center(
            child: Text(
              'القرآن الكريم',
              style: GoogleFonts.notoKufiArabic().copyWith(
                color: Colors.green,
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
