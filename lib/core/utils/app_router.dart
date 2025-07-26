import 'package:bookly/features/home/presention/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presention/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView= '/homeView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
  ],
);
}