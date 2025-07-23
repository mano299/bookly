import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHomeAppBar(),
          FeaturedListView(),
          SizedBox(height: 50),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
