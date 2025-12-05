import 'package:booklyapp/Constant.dart';
import 'package:booklyapp/core/utils/AssetsData.dart';
import 'package:booklyapp/core/utils/style.dart';
import 'package:flutter/material.dart';

import 'FeaturedListView.dart';
import 'best_seller_list_view.dart';
import 'best_seller_list_view_item.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomAppBar(),
              ),
              FeaturedBookListView(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24),
            child: ListViewBestSeller(),
          ),
        )
      ],
    );

  }
}
//  return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomAppBar(),
//             FeaturedBookListView(),
//             SizedBox(height: 30),
//             Text("Best Seller", style: Styles.textStyle18),
//             SizedBox(height: 15),
//             ListViewBestSeller(),
//           ],
//         ),
//       ),
//     );
