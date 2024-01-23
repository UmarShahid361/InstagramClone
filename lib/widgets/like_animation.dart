import 'package:flutter/material.dart';

class LikeAnimation extends StatefulWidget {
  final Widget child;
  final bool isAnimating;
  final VoidCallback? onEnd;
  final Duration duration;
  final bool smallLike;
  const LikeAnimation(
      {super.key,
      required this.child,
      required this.isAnimating,
      this.onEnd,
      this.duration = const Duration(milliseconds: 150),
      this.smallLike = false});

  @override
  State<LikeAnimation> createState() => _LikeAnimationState();
}

class _LikeAnimationState extends State<LikeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
