import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_view.dart';

class Amaflip extends StatelessWidget {
  const Amaflip({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectView(
      projectName: "Amaflip",
      location: "E-commerce Application",
      industry: "Flutter,Firebase",
      teamSize: "Solo",
      timeline: "3 Months",
      assetPaths: [
        "assets/images/a1.jpeg",
        "assets/images/a2.jpeg",
        "assets/images/a3.jpeg",
        "assets/images/a4.jpeg",
        "assets/images/a5.jpeg",
      ],
      description: '''
Amaflip is a Java-based E-Commerce mobile application built for seamless product discovery, smart shopping, and efficient order management. Combined with a powerful Admin Panel, it supports complete product lifecycle management, user handling, and analytics — all backed by Firebase for real-time scalability and performance.

Purpose  
Deliver a smooth, secure, and modern online shopping experience to customers, while equipping admins with a robust backend interface to manage inventory, orders, and user engagement in real time.

Key Features  
• Product Browsing: Categorized product listing with filters, search, and smart suggestions.  
• Secure User Auth: Login/sign-up via Firebase Authentication.  
• Cart & Checkout: Add to cart, manage quantity, and checkout with summary view.  
• Order Tracking: View real-time order status (Placed, Packed, Shipped, Delivered).  
• Wishlist: Save favorite items for future purchase.  
• Admin Panel: Web-based dashboard to add/edit products, manage orders & users.  
• Notifications: Order updates, discount offers, and alerts via Firebase Cloud Messaging.  
• Payment Placeholder: Ready for integration with Razorpay or Stripe.  
• Responsive UI: Mobile-friendly layout with Material Components and dark/light mode.  
• Image Handling: Product images and banners loaded using Glide and stored via Firebase Storage.  

Tech Stack & Libraries  
• Language: Java  
• Backend: Firebase Firestore (products, orders, users), Firebase Auth  
• Admin Panel: Spring Boot + Thymeleaf or Firebase Console (if Firebase-based)  
• Realtime Data: Firebase Firestore/Realtime Database for live updates  
• UI: AndroidX, Material Components  
• Image Loading: Glide  
• Network: Retrofit2 (for external APIs like shipping or location)  
• Notifications: Firebase Cloud Messaging (FCM)  
• Storage: Firebase Storage  
• Admin Analytics: Firebase Analytics or custom dashboard metrics  

User Flow  
• Onboarding: User signs up/logs in, sets location preferences.  
• Browsing: Explore categories, filter by price, rating, brand, etc.  
• Product Page: View details, images, add to cart or wishlist.  
• Checkout: Review cart, place order, get confirmation.  
• Orders: View status, history, cancel/refund flow (if added).  
• Admin Side: Login, add/edit products, process orders, track inventory.

Value Proposition  
• Provides a scalable shopping experience with real-time inventory.  
• Reduces admin overhead through centralized order and product management.  
• Offers a modern and responsive UI with smooth shopping journey.  
• Supports easy scalability with Firebase backend and modular design.
''',
      assetPaths2: [
        "assets/images/a9.png",
        "assets/images/a10.png",
        "assets/images/a11.png",
        "assets/images/a6.jpeg",
        "assets/images/a7.jpeg",
        "assets/images/a8.jpeg",
      ],
      url: "https://www.google.com",
      problems: '''
Fragmented Shopping Experience  
Users often struggle with slow apps, outdated inventory, or poor navigation while shopping online.  

Inventory Mismanagement  
Without a centralized system, tracking stock levels and order status becomes error-prone for sellers.  

Lack of Admin Control  
Small businesses don’t get scalable tools to manage catalogs, pricing, and users effectively.

No Real-Time Updates  
Apps that don’t reflect real-time price or stock changes frustrate buyers and lead to abandoned carts.
''',
      solutions: '''
Amaflip solves these core challenges by delivering:

Real-Time Product Sync  
• All product updates (price, stock, details) instantly reflected via Firebase Firestore.

Centralized Admin Panel  
• Admins can manage products, inventory, and orders in real time with simple tools.

Smart Shopping Features  
• Search, filter, wishlist, and smooth checkout flow streamline the customer journey.

Order Lifecycle Management  
• Each order moves through trackable states (Placed → Delivered) visible to both user and admin.

Push Notifications  
• Users are alerted about new offers, order updates, and delivery statuses through FCM.

Reliable, Scalable Backend  
• Built on Firebase and Spring Boot (admin side), ensuring performance and security at scale.
''',
    );
  }
}
