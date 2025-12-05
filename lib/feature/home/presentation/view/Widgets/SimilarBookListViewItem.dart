import 'package:flutter/material.dart';

import 'CustomListViewItem.dart';

class SimilarBookListViewItem extends StatelessWidget {
  const SimilarBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Customlistviewitem(),
        ),
      ),
    );
    ;
  }
}