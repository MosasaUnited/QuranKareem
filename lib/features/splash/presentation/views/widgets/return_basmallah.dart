import 'package:flutter/material.dart';

class ReturnBasmala extends StatelessWidget {
  const ReturnBasmala({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'بسم الله الرحمن الرحيم',
      style: TextStyle(fontFamily: 'quran', fontSize: 30),
      textDirection: TextDirection.rtl,
    );
  }
}
