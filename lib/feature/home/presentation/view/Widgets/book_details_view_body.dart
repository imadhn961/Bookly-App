import 'package:booklyapp/core/Widgets/CustomButton.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/CustomListViewItem.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/FeaturedListView.dart';
import 'package:booklyapp/feature/home/presentation/view/Widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BoxAction.dart';
import 'Custom_app_bar_book_details.dart';
import 'SimilarBookListViewItem.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book ;
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
                  child: Customlistviewitem(imagUrl: book.volumeInfo.imageLinks!.thumbnail,),
                ),
                const SizedBox(height: 43),
                Text(
                  book.volumeInfo.title!,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Text(
                  book.volumeInfo.authors?[0] ?? '',
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.white.withValues(alpha: .7),
                  ),

                ),
                const SizedBox(height: 18),
                const BookRating(),
                const SizedBox(height: 37),
                 BoxAction(bookModel: book,),
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


