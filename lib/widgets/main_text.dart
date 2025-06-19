import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Center(
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
    );
  }
}
