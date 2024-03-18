import 'package:flutter/material.dart';

import 'features/splash/presentation/views/screens/splash_view.dart';

void main() {
  runApp(const QuranKareem());
}

class QuranKareem extends StatelessWidget {
  const QuranKareem({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
