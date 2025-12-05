
import 'package:booklyapp/feature/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/view/book_details_view.dart';
import '../../feature/home/presentation/view/home_view.dart';
import '../../feature/splash/presentation/views/booklyHome.dart';

abstract class Routers{
  static final  router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeBookly()),
      GoRoute(path: '/HomeScreen', builder: (context, state) => HomeView()),
      GoRoute(path: '/BookDetails', builder: (context, state) => BookDetailsView()),
      GoRoute(path: '/SearchView', builder: (context, state) => SearchView()),

    ],
  );
}