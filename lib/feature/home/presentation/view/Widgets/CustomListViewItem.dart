import 'package:flutter/material.dart';

import '../../../../../core/utils/AssetsData.dart';

class Customlistviewitem extends StatelessWidget {
  const Customlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, //2.7 / 4
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );;
  }
}
