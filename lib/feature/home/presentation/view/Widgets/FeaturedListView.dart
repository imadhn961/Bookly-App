import 'package:booklyapp/feature/home/presentation/viewModel/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Widgets/CustomErrorWidget.dart';
import 'CustomListViewItem.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Customlistviewitem(imagUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPhmroeXSi_DRPRlVDOm3inxaKaMTRngTGGw&s',),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.message);
        } else {
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
