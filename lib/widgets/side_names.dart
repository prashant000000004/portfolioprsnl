import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_left.dart';

class SideNames extends StatelessWidget {
  const SideNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          animateFromLeft(
            Text(
              'Hey there, I’m',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const SizedBox(height: 10),
          animateFromLeft(
            Text(
              'Prashat Yadav',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const SizedBox(height: 180),
          animateFromLeft(
            Text(
              'Seeking internship opportunities\nin Mobile Development 🚀',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
