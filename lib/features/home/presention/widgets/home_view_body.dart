import 'package:bookly/features/home/presention/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHomeAppBar(),
        FeaturedListView(),
      ],
    );
  }
}
