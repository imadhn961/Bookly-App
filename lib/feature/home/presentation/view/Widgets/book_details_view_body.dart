import 'package:booklyapp/core/Widgets/CustomButton.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/CustomListViewItem.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/FeaturedListView.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BoxAction.dart';
import 'Custom_app_bar_book_details.dart';
import 'SimilarBookListViewItem.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SafeArea(child: CustomAppbarBookDetails()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const Customlistviewitem(),
                ),
                const SizedBox(height: 43),
                Text(
                  "The Jungle Book",
                  style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.white.withValues(alpha: .7),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(),
                const SizedBox(height: 37),
                const BoxAction(),
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBookListViewItem(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}


