import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Function(BuildContext) onPressedBuilder;
  final String buttonText;

  const ProjectCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.onPressedBuilder,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image section
        Container(
          height: screenWidth * 0.35,
          width: screenWidth * 0.42,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(imagePath, fit: BoxFit.fill),
          ),
        ),

        const SizedBox(height: 20),

        // Title
        Text(
          title,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 8),

        // Description
        Text(
          description,

          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),

        const SizedBox(height: 16),

        // Button
        TextButton(
          onPressed: onPressedBuilder(context),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            side: const BorderSide(color: Colors.black26, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // makes it perfectly rectangular
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, color: Colors.black),
            ],
          ),
        ),
      ],
    );
  }
}
