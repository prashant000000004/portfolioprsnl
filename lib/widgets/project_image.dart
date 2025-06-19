import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  final List<String> assetPaths;
  final double spacing;
  final BoxFit fit;

  const ProjectImage({
    required this.assetPaths,
    this.spacing = 12,
    this.fit = BoxFit.contain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final imageCount = assetPaths.length;
        final usableWidth = constraints.maxWidth - spacing * (imageCount - 1);
        final imageWidth = usableWidth / imageCount;

        // 👇 Dynamically increase height for fewer images
        double calculatedHeight;
        if (imageCount == 1) {
          calculatedHeight = imageWidth * 1.1;
        } else if (imageCount == 2) {
          calculatedHeight = imageWidth * 1.2;
        } else {
          calculatedHeight = imageWidth * 1.5;
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(assetPaths.length, (i) {
            return Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: i == 0 ? 0 : spacing / 2,
                  right: i == assetPaths.length - 1 ? 0 : spacing / 2,
                ),
                child: Container(
                  height: calculatedHeight,
                  alignment: Alignment.center,
                  child: Image.asset(assetPaths[i], fit: fit),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
