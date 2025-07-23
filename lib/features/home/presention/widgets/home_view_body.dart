import 'package:bookly/features/home/presention/widgets/custom_home_app_bar.dart';
import 'package:bookly/features/home/presention/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHomeAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
