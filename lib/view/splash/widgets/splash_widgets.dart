import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_rate/view/register_screen.dart';
import '../../../const/img.dart';
import '../../../const/num.dart';
import 'slidin_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToReg();

  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff664AF5),
      child: Stack(
        children: [
           Center(child: Image(image: AssetImage(SplashImage),)),
          Positioned(
              top: MediaQuery.of(context).size.height/1.52,
              right: MediaQuery.of(context).size.width/2.7,
              child: SlidingText(slidingAnimation: slidingAnimation)),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1230),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(9, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToReg() {
    Timer(const Duration(milliseconds: delayTime), ()
    {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Register()));
    });
  }
}