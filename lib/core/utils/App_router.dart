import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/relevnt_Box_cubit/relevant_box_cubit.dart';
import 'package:booklyapp/feature/search/data/repo/search_repo_implement.dart';
import 'package:booklyapp/feature/search/presentation/Manager/search_cubit.dart';
import 'package:booklyapp/feature/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/data/Repo/home_repo_impl.dart';
import '../../feature/home/data/models/Book_model.dart';
import '../../feature/home/presentation/view/book_details_view.dart';
import '../../feature/home/presentation/view/home_view.dart';
import '../../feature/splash/presentation/views/booklyHome.dart';

abstract class Routers {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomeBookly()),
      GoRoute(path: '/HomeScreen', builder: (context, state) => HomeView()),
      // GoRoute(path: '/BookDetails', builder: (context, state) => BookDetailsView()),
      GoRoute(
        path: '/BookDetails',
        builder: (context, state) => BlocProvider(
          create: (context) => RelevantBoxCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SearchCubit(searchImpl: getIt.get<searchRepoImpl>()),
          child: SearchView(),
        ),
      ),
    ],
  );
}
