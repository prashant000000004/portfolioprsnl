import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/animation_widget/animate_from_left.dart';
import 'package:my_portfolio/animation_widget/animate_from_right.dart';
import 'package:my_portfolio/widgets/lets_chat_button.dart';
import 'package:my_portfolio/widgets/resume_download_button.dart';
import 'package:my_portfolio/widgets/side_names.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Text Section
        const SizedBox(height: 8),

        SideNames(),

        const SizedBox(width: 60),

        // Middle Image Section
        Expanded(
          flex: 6,
          child: Center(
            child: Container(
              width: screenWidth * 0.4,
              height: screenWidth * 0.4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEDEDED),
              ),
              child: animateFromBottom(
                ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 40),
        const SizedBox(height: 10),

        // Right Description + Button Section
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              animateFromRight(
                Container(
                  height: 200,
                  width: 300,
                  child: Text(
                    "Application developer focused on building user-centric, high-performance apps. Expertise in merging clean code with intuitive UI/UX design to create solutions that solve problems and delight users.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              const SizedBox(height: 160),
              //chat button section
              animateFromRight(LetsChatButton()),
              const SizedBox(height: 10),
              animateFromLeft(
                DownloadResumeButton(
                  resumeUrl:
                      "https://drive.google.com/uc?export=download&id=1-QA_LGBGcYhvtWeyapMAyvY1HTWPWo9J",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
