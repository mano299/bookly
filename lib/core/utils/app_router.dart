import 'package:bookly/features/home/presention/views/book_details_view.dart';
import 'package:bookly/features/home/presention/views/home_view.dart';
import 'package:bookly/features/search/presention/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presention/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView= '/homeView';
  static const kBookDetailsView= '/bookDetailsView';
  static const kSearchView= '/searchView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BookDetailsView(),
    ),
  ],
);
}