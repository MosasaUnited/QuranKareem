import 'package:flutter/material.dart';
import 'package:quraan_app/core/constants/constant.dart';

import 'core/constants/sura_name.dart';
import 'features/home/presentation/views/screens/index.dart';

void main() {
  runApp(const QuranKareem());
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
