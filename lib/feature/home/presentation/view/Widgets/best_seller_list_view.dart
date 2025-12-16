import 'package:booklyapp/core/Widgets/CustomErrorWidget.dart';
import 'package:booklyapp/core/Widgets/CustomLoading.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/Best_seller_Cubit/best_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is BestSellerBooksFailure) {
          return CustomErrorWidget(errMessage: state.message);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
