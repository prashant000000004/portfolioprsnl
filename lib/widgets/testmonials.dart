import 'package:flutter/material.dart';

class Testmonials extends StatelessWidget {
  const Testmonials({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Testimonials",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            SizedBox(width: screenWidth * 0.56),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 236, 236),
              ),
              width: screenWidth * 0.04,
              height: screenWidth * 0.04,
              child: Icon(Icons.arrow_back, size: 24, color: Colors.black),
            ),
            SizedBox(width: 8),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 236, 236),
              ),
              width: screenWidth * 0.04,
              height: screenWidth * 0.04,
              child: Icon(Icons.arrow_forward, size: 24, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
