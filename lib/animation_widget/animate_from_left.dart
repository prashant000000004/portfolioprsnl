import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Widget animateFromLeft(Widget child, {Duration delay = Duration.zero}) {
  return child
      .animate(delay: delay)
      .fadeIn(duration: 500.ms)
      .slideX(begin: -0.5, end: 0, curve: Curves.easeOut);
}
