import 'package:bookly/features/home/presention/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomHomeAppBar(),
        ],
      ),
    );
  }
}
