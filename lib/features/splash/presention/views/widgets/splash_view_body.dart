import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          height: 64,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Books for free',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
