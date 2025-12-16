import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:booklyapp/feature/home/presentation/viewModel/relevnt_Box_cubit/relevant_box_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Widgets/CustomErrorWidget.dart';
import '../../../../../core/Widgets/CustomLoading.dart';
import '../../viewModel/relevnt_Box_cubit/relevant_box_state.dart';
import 'CustomListViewItem.dart';

class SimilarBookListViewItem extends StatelessWidget {
  const SimilarBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevantBoxCubit, RelevantBoxState>(
      builder: (context, state) {
        if (state is RelevantBoxSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Customlistviewitem(
                     imagUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail ??
                          '',
                    ),
                  );
                }),
          );
        } else if (state is RelevantBoxFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}