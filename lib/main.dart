import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quraan_app/core/constants/constant.dart';

import 'features/home/presentation/views/screens/index.dart';

void main() {
  runApp(const QuranKareem());
}

List arabic = [];
List malayalam = [];
List quran = [];

readJson() async {
  final String response =
      await rootBundle.loadString('assets/el link beta3 el json hena .json');
  final data = json.decode(response);
  arabic = data['quran'];
  malayalam = data['malayalam'];
  return quran = [arabic, malayalam];
}

class QuranKareem extends StatefulWidget {
  const QuranKareem({super.key});

  @override
  State<QuranKareem> createState() => _QuranKareemState();
}

class _QuranKareemState extends State<QuranKareem> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await readJson();
      await getSettings();
    });
    super.initState();
  }

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
      home: const IndexPage(),
    );
  }
}
