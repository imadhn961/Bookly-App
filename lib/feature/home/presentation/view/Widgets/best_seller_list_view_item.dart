import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Constant.dart';
import '../../../../../core/utils/AssetsData.dart';
import '../../../../../core/utils/style.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push("/BookDetails"),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4, //2.7 / 4
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
           const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "The Jungle Book",
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
                      Text("19.99 € " , style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
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


