import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/contact_screen.dart';

class LetsChatButton extends StatelessWidget {
  const LetsChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF9C27B0),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(60),
      ),
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => ContactScreen()));
      },
      child: const Text(
        "LET'S CHAT",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
