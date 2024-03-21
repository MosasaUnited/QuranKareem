import 'package:go_router/go_router.dart';
import 'package:quraan_app/core/constants/sura_name.dart';
import 'package:quraan_app/features/home/presentation/views/screens/index.dart';
import 'package:quraan_app/features/settings/presentation/views/screens/settings.dart';
import 'package:quraan_app/features/splash/presentation/views/screens/splash_view.dart';

import '../../features/home/presentation/views/widgets/surah_builder.dart';
import 'constant.dart';

abstract class AppRouter {
  static const kHomeView = '/quranView';
  static const kSettingsView = '/settings';
  static const kSurahBuilderView = '/SurahBuilder';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const IndexPage(),
      ),
      GoRoute(
        path: kSettingsView,
        builder: (context, state) => const Settings(),
      ),
      GoRoute(
        path: kSurahBuilderView,
        builder: (context, state) => SurahBuilder(
          arabic: quran[0],
          sura: bookmarkedSura - 1,
          suraName: arabicName[bookmarkedSura - 1]['name'],
          ayah: bookmarkedAyah,
        ),
      ),
    ],
  );
}
