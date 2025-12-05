import 'package:flutter/material.dart';

import '../../../../../core/Widgets/CustomButton.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: customButton(
            BakgroundColor: Colors.white,
            BorderR: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            TextColor: Colors.black,
            text: '19.99 €' ,
          ),
        ),
        Expanded(
          child: customButton(
            BakgroundColor: Color(0xffEF8262),
            BorderR: BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            TextColor: Colors.white,
            text: 'Free Preview',
            sized: 18,
          ),
        ),
      ],
    );
  }
}