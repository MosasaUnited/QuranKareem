import 'package:flutter/material.dart';
import 'package:quraan_app/core/constants/constant.dart';

import 'core/constants/app_router.dart';
import 'core/constants/custom_colors.dart';
import 'core/constants/sura_name.dart';

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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Quran App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.appColor),
        useMaterial3: false,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
