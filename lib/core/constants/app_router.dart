import 'package:go_router/go_router.dart';
import 'package:quraan_app/features/home/presentation/views/screens/index.dart';
import 'package:quraan_app/features/splash/presentation/views/screens/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/quranView';

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
    ],
  );
}
