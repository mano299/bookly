import 'package:bookly/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController textAnimationController;
  late AnimationController logoAnimationController;
  late Animation<Offset> textSlidingAnimation;
  late Animation<Offset> logoSlidingAnimation;

  @override
  void initState() {
    super.initState();
    textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    logoAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    textSlidingAnimation = Tween<Offset>(
      begin: Offset(0, 3),
      end: Offset.zero,
    ).animate(textAnimationController);

    logoSlidingAnimation = Tween<Offset>(
      begin: Offset(0, -3),
      end: Offset.zero,
    ).animate(logoAnimationController);

    logoAnimationController.forward();
    Future.delayed(Duration(milliseconds: 500), () {
      textAnimationController.forward();
    });
  }

  @override
  void dispose() {
    textAnimationController.dispose();
    logoAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
          position: logoSlidingAnimation,
          child: SvgPicture.asset(
            AssetsData.logo,
            height: 64,
          ),
        ),
        SizedBox(height: 8),
        SlideTransition(
          position: textSlidingAnimation,
          child: Text(
            'Books for free',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
