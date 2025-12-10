import 'package:booklyapp/Constant.dart';
import 'package:booklyapp/core/utils/App_router.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/feature/home/data/Repo/home_repo_impl.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/Best_seller_Cubit/best_seller_books_cubit.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(getIt.get<HomeRepoImpl>());
          },
        ),
        BlocProvider(
          create: (context) {
            return BestSellerBooksCubit(getIt.get<HomeRepoImpl>());
          },
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        routerConfig: Routers.router,
      ),
    );
  }
}
