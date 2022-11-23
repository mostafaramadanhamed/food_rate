
import 'package:flutter/material.dart';
class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Food Rate',style: TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}