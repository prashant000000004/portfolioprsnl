import 'package:flutter/material.dart';
import 'package:my_portfolio/project_types/amaflip.dart';
import 'package:my_portfolio/project_types/chatterbox.dart';
import 'package:my_portfolio/project_types/e-commerce.dart';
import 'package:my_portfolio/project_types/recipe.dart';
import 'package:my_portfolio/widgets/project_card.dart';

final List<Widget> myWidgets = [
  ProjectCard(
    imagePath: "assets/images/messagecoverpage.jpg",
    title: "Chatterbox",
    description:
        '''Stay connected with friends, family, or teams using ChatterBox — A real-time messaging app for smooth, secure, and instant conversations.''',
    onPressedBuilder: (context) {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Chatterbox()),
        );
      };
    },
    buttonText: "VIEW PROJECT",
  ),
  ProjectCard(
    imagePath: "assets/images/amaflipcoverpage.jpg",
    title: "Amaplip",
    description:
        "A complete eCommerce app with admin panel for seamless product browsing, secure checkout, and effortless store management.",
    onPressedBuilder: (context) {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Amaflip()),
        );
      };
    },
    buttonText: "VIEW PROJECT",
  ),
  ProjectCard(
    imagePath: "assets/images/recipecoverpage.jpg",
    title: "Recipe",
    description:
        "A smart recipe app to explore, save, and cook dishes with step-by-step guidance and personalized suggestions.",
    onPressedBuilder: (context) {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Recipe()),
        );
      };
    },
    buttonText: "VIEW PROJECT",
  ),
  ProjectCard(
    imagePath: "assets/images/expensecoverpage.jpg",
    title: "E-Manager",
    description:
        "Track spending, manage budgets, and gain insights—all in one simple, powerful finance app.",
    onPressedBuilder: (context) {
      return () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Ecommerce()),
        );
      };
    },
    buttonText: "VIEW PROJECT",
  ),
];
