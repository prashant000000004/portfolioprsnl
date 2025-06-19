import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/model/my_widgets_projects.dart';

class ProjectsWidgets extends StatelessWidget {
  const ProjectsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return animateFromBottom(
      GridView.count(
        shrinkWrap: true, // ← tell it to size to its contents
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2, // 2 per row
        childAspectRatio: 0.95,
        children:
            myWidgets.map((widget) {
              return Padding(padding: const EdgeInsets.all(4.0), child: widget);
            }).toList(),
      ),
    );
  }
}
