import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/widgets/expirence_item.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: 50),
        animateFromBottom(
          Center(
            child: Text(
              "Experience",
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

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 32),
                    ExperienceItem(
                      role: "Flutter Developer",
                      company: "Learnhyve",
                      years: "feb 2025 - june 2025",
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 40),

              // Right Side - Image
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.asset(
                    'assets/images/experiencecoverpage.webp',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
