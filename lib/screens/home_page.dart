import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';
import 'package:my_portfolio/widgets/about_me_widget.dart';
import 'package:my_portfolio/widgets/best_service_section.dart';
import 'package:my_portfolio/widgets/experience_widget.dart';
import 'package:my_portfolio/widgets/footer_section.dart';
import 'package:my_portfolio/widgets/main_text.dart';
import 'package:my_portfolio/widgets/projects_widgets.dart';
import 'package:my_portfolio/widgets/skills_widget.dart';
import 'package:my_portfolio/widgets/testinomial_widgets.dart';
import 'package:my_portfolio/widgets/why_choose_me_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

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
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  AboutMeWidget(),

                  //mobile developer text
                  Positioned(
                    top: screenWidth * 0.87,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Text(
                        'APPLICATION DEVELOPER',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.065,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  animateFromBottom(
                    Text(
                      'Recent projects',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  ProjectsWidgets(),
                  SizedBox(height: 70),
                  animateFromBottom(
                    Text(
                      'Skills',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  SkillSection(
                    heading: 'Languages',
                    skills: [
                      Skill('Java', Icons.language, 0.9),
                      Skill('Kotlin', Icons.flutter_dash, 0.85),
                      Skill('Dart', Icons.android, 0.8),
                      Skill('Python', Icons.cloud, 0.75),
                      Skill('SQL', Icons.cloud, 0.75),
                    ],
                  ),
                  SkillSection(
                    heading: 'Frameworks',
                    skills: [
                      Skill('Flutter', Icons.code, 0.9),
                      Skill('Spring Boot', Icons.flutter_dash, 0.8),
                    ],
                  ),
                  SkillSection(
                    heading: 'Developer Tools',
                    skills: [
                      Skill('Android Studio and SDK', Icons.code, 0.9),
                      Skill('Firebase', Icons.flutter_dash, 0.8),
                      Skill('Postman', Icons.language, 0.9),
                      Skill('Git', Icons.flutter_dash, 0.85),
                      Skill('Vs Code', Icons.android, 0.8),
                      Skill('IntelliJ', Icons.cloud, 0.75),
                    ],
                  ),
                  SkillSection(
                    heading: 'Technical Skills',
                    skills: [
                      Skill('MVVM Architecture', Icons.code, 0.9),
                      Skill(
                        'State Managment in Flutter',
                        Icons.flutter_dash,
                        0.8,
                      ),
                      Skill(
                        'Dependency Injection(Dagger/Hilt)',
                        Icons.language,
                        0.9,
                      ),
                      Skill('CI/CDPipelines', Icons.android, 0.8),
                    ],
                  ),

                  SizedBox(height: 50),
                  BestServiceSection(),
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
