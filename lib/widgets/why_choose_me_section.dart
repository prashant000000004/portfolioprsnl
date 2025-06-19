import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/why_choose_me.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';

class WhyChooseMeSectionwidget extends StatelessWidget {
  const WhyChooseMeSectionwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: 32),
        animateFromBottom(
          Center(
            child: Text(
              "Why Choose Me?",
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ),
        SizedBox(height: 32),
        WhyChooseMeSection(
          imagePath:
              'assets/images/project_image.jpeg', // Replace with your actual image
          features: [
            FeatureData(
              title: 'Innovative Solutions',
              description:
                  "We craft intuitive, high-performance apps using Flutter and clean architecture (MVVM, Riverpod). Our focus: delightful UX and real business impact.",
            ),
            FeatureData(
              title: ' Tech Mastery',
              description:
                  "Fluent in Dart, Kotlin, Node.js, Spring Boot & Firebase—we use the right tools to build scalable, real-time, and maintainable solutions.",
            ),
            FeatureData(
              title: 'Scalable Architecture',
              description:
                  "We design for growth—modular code, flexible state management, and cloud-native backends ensure apps evolve without costly rewrites.",
            ),
          ],
        ),
      ],
    );
  }
}
