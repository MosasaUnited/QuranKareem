import 'package:flutter/material.dart';
import 'package:quraan_app/core/constants/to_arabic_no_converter.dart';

import '../../../../../core/constants/custom_colors.dart';

class ArabicSuraNumber extends StatelessWidget {
  const ArabicSuraNumber({super.key, required this.i});

  final int i;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\uFD3E${(i + 1).toString().toArabicNumbers}\uFD3f',
      style: const TextStyle(
        color: CustomColors.arabicFontColor,
        fontFamily: 'quran',
        fontSize: 35,
        shadows: [
          Shadow(
              offset: Offset(.5, .5),
              blurRadius: 1.0,
              color: Colors.amberAccent),
        ],
      ),
    );
  }
}
