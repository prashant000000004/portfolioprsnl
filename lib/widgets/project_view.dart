import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';
import 'package:my_portfolio/widgets/footer_section.dart';
import 'package:my_portfolio/widgets/project_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectView extends StatelessWidget {
  final String projectName;
  final String location;
  final String industry;
  final String teamSize;
  final String timeline;
  final List<String> assetPaths;
  final String description;
  final List<String> assetPaths2;
  final String url;
  final String problems;
  final String solutions;

  const ProjectView({
    Key? key,
    required this.projectName,
    required this.location,
    required this.industry,
    required this.teamSize,
    required this.timeline,
    required this.assetPaths,
    required this.description,
    required this.assetPaths2,
    required this.url,
    required this.problems,
    required this.solutions,
  }) : super(key: key);

  void _launchURL() async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildItem(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Prashant.",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Flexible(child: NavBar()),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: animateFromBottom(
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    animateFromBottom(
                      Text(
                        projectName,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 150,
                      runSpacing: 20,
                      children: [
                        buildItem("Project Title", projectName),
                        buildItem("Project Type", location),
                        buildItem("Tech Stack", industry),
                        buildItem("Role & Ownership", teamSize),
                        buildItem("Timeline", timeline),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ProjectImage(assetPaths: assetPaths, spacing: 8),
                    const SizedBox(height: 32),
                    const Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 18, height: 1.5),
                    ),
                    const SizedBox(height: 20),
                    ProjectImage(assetPaths: assetPaths2, spacing: 8),
                    const SizedBox(height: 32),
                    const Text(
                      "Problems",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      problems,
                      style: const TextStyle(fontSize: 18, height: 1.5),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Solutions",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      solutions,
                      style: const TextStyle(fontSize: 18, height: 1.5),
                    ),
                    const SizedBox(height: 24),
                    OutlinedButton(
                      onPressed: _launchURL,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Github",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.open_in_new,
                            size: 18,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
