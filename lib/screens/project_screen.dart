import 'package:flutter/material.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';
import 'package:my_portfolio/widgets/footer_section.dart';
import 'package:my_portfolio/widgets/projects_widgets.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 24.0,
              right: 24.0,
              bottom: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Prashant.",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Flexible(child: NavBar()),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  Text(
                    "PROJECTS",
                    style: TextStyle(
                      fontSize: 140,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 50),
                  ProjectsWidgets(),
                  SizedBox(height: 50),
                ],
              ),
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
