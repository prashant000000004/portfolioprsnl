import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/model/certificate.dart';
import 'package:my_portfolio/navigation_bar/navigation_bar.dart';
import 'package:my_portfolio/widgets/certification_section.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final certificates = [
      Certificate(
        title: 'Cyber Security',
        issuer: 'Deloitte',
        date: 'May 27th, 2025',
        category: 'Cyber Security',
        description:
            "Completed Deloitte's Cyber Job Simulation by Forage, gaining hands-on experience in real-world cybersecurity tasks.",
        skills: [
          "Threat Detection & Analysis",
          "Incident Response Handling",
          "Risk Assessment",
          "Cybersecurity Strategy",
          "Report Writing & Documentation",
          "Professional Communication in Security Contexts",
        ],
        assetPath: 'assets/images/cyber.jpeg',
        link: 'https://example.com/view1',
      ),

      Certificate(
        title: 'Android App Development',
        issuer: 'Intenshala Trainings',
        date: 'Oct 17, 2024',
        category: 'Android Development Training',
        description:
            'Completed a 6-week hands-on training in Android App Development using Kotlin, offered by Internshala in collaboration with IITM Pravartak.',
        skills: [
          "Fundamentals of Android and Kotlin",

          "UI Design & XML Layouts",

          "Activity Lifecycle Management",

          "Higher Order Functions in Kotlin",

          "Android Project Structuring",

          "App Deployment Basics",

          "Final Project Implementation",
        ],
        assetPath: 'assets/images/android.jpeg',
        link: 'https://example.com/view1',
      ),
      Certificate(
        title: 'My Sql',
        issuer: 'Udemy',
        date: 'Feb 10, 2025',
        category: 'Database & SQL',
        description:
            'Completed Udemy’s “The Ultimate MySQL Bootcamp” covering beginner to advanced SQL concepts in 22 hours of hands-on training.',
        skills: [
          "Relational Database Fundamentals",
          "Writing Complex SQL Queries",
          "Data Filtering, Sorting & Joins",
          "Aggregate Functions & Subqueries",
          "Database Design & Normalization",
          "CRUD Operations (Create, Read, Update, Delete)",
          "Data Modeling and Index Optimizatio",
          "Real-World SQL Project Implementation",
        ],
        assetPath: 'assets/images/sql.jpeg',
        link: 'https://example.com/view1',
      ),

      Certificate(
        title: 'Core Programming - Java',
        issuer: 'Great Learning',
        date: 'Nov, 2024',
        category: 'Language',
        description:
            'Completed an online course in Java Programming from Great Learning Academy, covering foundational and object-oriented concepts.',
        skills: [
          "Core Java Syntax & Data Types",
          "Control Structures & Loops",
          "Functions and Exception Handling",
          "Object-Oriented Programming (OOP)",
          "Classes, Objects, Inheritance, Polymorphism",
          "Basic File Handling and Input/Output",
          "Introduction to Java Collections",
        ],
        assetPath: 'assets/images/java.jpeg',
        link: 'https://example.com/view1',
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Prashant.',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                const Flexible(child: NavBar()),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            animateFromBottom(
              Text(
                'CERTIFICATES ',
                style: TextStyle(
                  fontSize: 140,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 40),
            animateFromBottom(CertificateSection(certificates: certificates)),
          ],
        ),
      ),
    );
  }
}
