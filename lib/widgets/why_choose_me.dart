import 'package:flutter/material.dart';

class WhyChooseMeSection extends StatelessWidget {
  final String imagePath;
  final List<FeatureData> features;

  const WhyChooseMeSection({
    super.key,
    required this.imagePath,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Slightly larger image section
          Expanded(
            flex: 6, // Previously 1:1, now increased image ratio
            child: Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),

          // Features Section
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  features.asMap().entries.map((entry) {
                    final index = entry.key + 1;
                    final feature = entry.value;

                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 40.0,
                      ), // more space between features
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              '(0$index)',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ), // more space between number and text
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  feature.title,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  feature.description,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureData {
  final String title;
  final String description;

  FeatureData({required this.title, required this.description});
}
