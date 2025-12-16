import 'package:booklyapp/core/Widgets/CustomLoading.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/CustomListViewItem.dart';
import 'package:booklyapp/feature/search/presentation/Manager/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/style.dart';
import 'CustomsearchTextField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text('Search Result', style: Styles.textStyle18),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          //لترة البيانات في الصفحة السابقة (أفضل أداء)
          final booksWithImages = state.books
              .where((b) => b.volumeInfo.imageLinks?.thumbnail != null)
              .toList();
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Customlistviewitem(
                  imagUrl:
                      booksWithImages[index].volumeInfo.imageLinks!.thumbnail,
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return ErrorWidget(state.message);
        } else if (state is SearchLoading) {
          return CustomLoadingIndicator();
        }else{
          return const SizedBox();
        }
      },
    );
  }
}
