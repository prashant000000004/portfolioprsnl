import 'package:flutter/material.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';
import 'package:my_portfolio/widgets/about_me_widget.dart';
import 'package:my_portfolio/widgets/experience_widget.dart';
import 'package:my_portfolio/widgets/footer_section.dart';
import 'package:my_portfolio/widgets/testinomial_widgets.dart';
import 'package:my_portfolio/widgets/why_choose_me_section.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  Text(
                    "ABOUT ME",
                    style: TextStyle(
                      fontSize: 140,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  AboutMeWidget(),
                  WhyChooseMeSectionwidget(),
                  ExperienceWidget(),
                  TestinomialWidgets(),
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
