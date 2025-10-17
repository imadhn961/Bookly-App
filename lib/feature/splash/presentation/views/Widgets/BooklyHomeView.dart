import 'package:booklyapp/core/utils/AssetsData.dart';
import 'package:flutter/cupertino.dart';

class Booklyhomeview extends StatelessWidget {
  const Booklyhomeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo)
      ],
    );
  }
}
