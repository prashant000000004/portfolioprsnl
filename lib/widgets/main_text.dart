import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Positioned(
      top: screenWidth * 0.87,
      left: 0,
      right: 0,
      child: Container(
        height: 100,
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
