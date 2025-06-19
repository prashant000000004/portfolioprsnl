import 'package:flutter/material.dart';
import 'package:my_portfolio/animation_widget/animate_from_bottom.dart';
import 'package:my_portfolio/widgets/best_services.dart';

class BestServiceSection extends StatelessWidget {
  const BestServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        animateFromBottom(
          Center(
            child: Text(
              "Best Services",
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ),

        animateFromBottom(
          BestServices(
            number: "01",
            title: "Development",
            bulletPoints: const [
              "Custom Apps",

              "Native Performance",

              "Clean Architecture",

              "Rapid Prototyping",

              "Code Scalability",
            ],
            image: Image.asset(
              'assets/images/development.png',
              fit: BoxFit.contain,
            ),
            description:
                "Our development services are focused on transforming your ideas into high-quality, fully functional mobile applications. From building custom features to implementing clean and scalable architecture, we ensure every app is tailored to meet your business goals. Using Flutter and best development practices, we create fast, reliable, and maintainable applications that deliver seamless user experiences and long-term value for your users.",
          ),
        ),
        BestServices(
          number: "02",
          title: "Crossplatform",
          bulletPoints: const [
            "Flutter Solutions",

            "Unified Codebase",

            "Cost Efficiency",

            "UI Consistency",

            "Time Savings",
          ],
          image: Image.asset(
            'assets/images/crossplatform.jpg',
            fit: BoxFit.contain,
          ),
          description:
              "Our crossplatform development services are designed to help you launch powerful, consistent mobile apps across both Android and iOS using a single codebase. Leveraging the capabilities of Flutter, we build apps that deliver native-like performance and a seamless user experience. This approach not only reduces development time and cost but also ensures faster updates and easier maintenance, helping your product reach a wider audience with maximum efficiency.",
        ),
        BestServices(
          number: "03",
          title: "Backened",
          bulletPoints: const [
            "API Integration",

            "Secure Auth",

            "Real-time Sync",

            "Cloud Functions",

            "Data Persistence",
          ],
          image: Image.asset('assets/images/backend.webp', fit: BoxFit.contain),
          description:
              "Our backend services are designed to provide your mobile applications with a secure, scalable, and high-performance foundation. From setting up robust APIs to integrating cloud databases and authentication systems, we ensure your app runs smoothly behind the scenes. Our expertise in technologies like Node.js, Spring Boot, and Firebase allows us to deliver seamless data flow, real-time updates, and reliable user management — empowering your app to perform flawlessly at scale.",
        ),
        BestServices(
          number: "04",
          title: "  Deployment",
          bulletPoints: const [
            "Store Launch",

            "Release Pipeline",

            "App Listing",

            "Version Control",

            "Continuous Deploy",
          ],
          image: Image.asset(
            'assets/images/deployement.jpg',
            fit: BoxFit.contain,
          ),
          description:
              "Our deployment services are designed to ensure your mobile application is launched smoothly, efficiently, and with maximum impact. From preparing production-ready builds to handling app store submissions, we take care of every technical and compliance requirement. We also optimize your store listings with professional visuals and metadata, ensuring your app makes a strong first impression, reaches the right audience, and is ready for seamless updates and long-term success.",
        ),
      ],
    );
  }
}
