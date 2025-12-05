import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AssetsData.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35 ,bottom: 10),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 18,),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/SearchView');
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
          ),
        ],
      ),
    );
  }
}