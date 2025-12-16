import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.yellow.shade600,size: 20,),
        const SizedBox(width: 6.3,),
        Text("4.8" , style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
