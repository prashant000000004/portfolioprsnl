import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Widget animateFromBottom(Widget child, {Duration delay = Duration.zero}) {
  return child
      .animate(delay: delay)
      .fadeIn(duration: 500.ms)
      .slideY(begin: 0.5, end: 0, curve: Curves.easeOut);
}
