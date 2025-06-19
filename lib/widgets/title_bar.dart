import 'package:flutter/material.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            Text("Prashant", style: TextStyle(fontSize: 20)),
            NavBar(),
          ],
        );
      },
    );
  }
}
