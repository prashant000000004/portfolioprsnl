import 'package:flutter/material.dart';

class BestServices extends StatelessWidget {
  final String number;
  final String title;
  final List<String> bulletPoints;
  final Widget image;
  final String description;

  const BestServices({
    Key? key,
    required this.number,
    required this.title,
    required this.bulletPoints,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isNarrow = screenWidth < 600;

    Widget leftColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('($number)', style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    softWrap: true,
                  ),
                  const SizedBox(height: 12),
                  ...bulletPoints.map(
                    (bp) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Text(
                        bp,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );

    Widget rightColumn = Container(
      width: isNarrow ? double.infinity : null,
      child: Text(
        description,
        style: const TextStyle(fontSize: 16, height: 1.4),
        softWrap: true,
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child:
          isNarrow
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leftColumn,
                  const SizedBox(height: 24),
                  image,
                  const SizedBox(height: 24),
                  rightColumn,
                ],
              )
              : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 2, child: leftColumn),
                  const SizedBox(width: 24),
                  Expanded(flex: 3, child: image),
                  const SizedBox(width: 24),
                  Expanded(flex: 2, child: rightColumn),
                ],
              ),
    );
  }
}
