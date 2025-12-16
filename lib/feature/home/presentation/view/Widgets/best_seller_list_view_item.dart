import 'package:booklyapp/feature/home/presentation/view/Widgets/CustomListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Constant.dart';
import '../../../../../core/utils/AssetsData.dart';
import '../../../../../core/utils/style.dart';
import '../../../data/models/Book_model.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push("/BookDetails",extra: bookModel  ),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Customlistviewitem(
                imagUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',),
           const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis ,
                      style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text( "Free" , style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      BookRating(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


