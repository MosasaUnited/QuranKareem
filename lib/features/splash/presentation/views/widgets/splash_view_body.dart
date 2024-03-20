import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quraan_app/core/constants/app_router.dart';
import 'package:quraan_app/core/utils/assets.dart';

import '../../../../../core/constants/custom_colors.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer(); // Initialize audio player
    _playSplashAudio();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose(); // Release audio player resources
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.splashBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const Center(
            child: Text(
              'القرآن الكريم',
              style: TextStyle(
                fontFamily: 'me_quran',
                fontWeight: FontWeight.w900,
                color: Colors.green,
                fontSize: 60,
              ),
            ),
          )
        ],
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void _playSplashAudio() async {
    await _audioPlayer.play(AssetSource('audio/basmallah.mp3'));
  }
}
