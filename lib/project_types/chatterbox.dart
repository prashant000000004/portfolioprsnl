import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_view.dart';

class Chatterbox extends StatelessWidget {
  const Chatterbox({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectView(
      projectName: "ChatterBox",
      location: "Messaging App",
      industry: "Java,Firebase,Firebase Auth",
      teamSize: "Solo",
      timeline: "3 Months",
      assetPaths: [
        "assets/images/chatfirst.jpeg",
        "assets/images/chatsecond.jpeg",
        "assets/images/chatthird.jpeg",
      ],
      description: '''
Your Android Messaging App is a real-time chat application built using Java and Firebase, designed for smooth, secure, and instant communication. It provides reliable messaging features along with real-time notifications, user presence tracking, and a sleek UI for modern mobile usage.

Purpose  
Enable users to connect instantly with others through real-time messaging, multimedia sharing, and smart notification handling—all while maintaining strong data security and smooth performance.

Key Features  
• Real-Time Messaging: Instantly send and receive text messages with live updates.  
• Firebase Notifications: Receive push notifications for new messages and friend requests.  
• User Authentication: Sign up/login with email or phone authentication via Firebase Auth.  
• Typing & Online Indicators: See when someone is online or typing in real-time.  
• Multimedia Support: Share images, emojis, and media files in chat.  
• Message Read Status: Check if messages are delivered and read (double ticks).  
• Chat Management: Search, delete, archive, and pin conversations.  
• Secure Backend: All data managed securely using Firebase Firestore and Firebase Rules.  
• Profile Management: Users can update their name, profile picture, and bio.  
• Dark & Light Theme Support: Theme-aware design for better UX.  

Tech Stack & Libraries  
• Language: Java  
• Backend: Firebase Firestore (for chat), Firebase Authentication  
• Notifications: Firebase Cloud Messaging (FCM)  
• Realtime Presence: Firebase Realtime Database  
• Storage: Firebase Storage for image/file sharing  
• UI: AndroidX, Material Design Components  
• Image Loading: Glide for user profile pictures and shared media  
• Background Tasks: WorkManager for sync and message delivery retry  
• Dependency Injection: Dagger or Hilt (optional for scalability)

User Flow  
• Onboarding: User signs up/logs in using email or phone number.  
• Home Screen: Displays recent chats with presence and last message.  
• Messaging Screen: Real-time chat with image support and notifications.  
• Profile Setup: Add/update profile photo, name, status.  
• Settings: Toggle notifications, theme, and logout securely.  

Value Proposition  
• Fast and reliable real-time messaging using Firebase's scalable backend.  
• Keeps users engaged with live presence tracking and instant alerts.  
• Simplifies messaging UI with a minimal, user-focused design.  
• Provides safe and encrypted chat with Firebase security best practices.  

''',
      assetPaths2: [
        "assets/images/chatfourth.jpeg",
        "assets/images/chatfifth.jpeg",
      ],
      url: "https://github.com/prashant000000004/chatterBox",
      problems: '''
Fragmented Messaging Experience  
Users juggle between multiple apps that either lack real-time messaging or don’t deliver messages reliably.  

No Offline Access or Sync Failures  
Many messaging apps don’t handle bad networks gracefully, leading to lost messages or sync issues.  

Poor Notification Handling  
Delayed or missing notifications frustrate users and kill engagement.  

Basic Messaging Only  
Most basic chat apps don’t support images, typing indicators, or presence—which are now standard expectations.
''',
      solutions: '''
Your Messaging App solves these issues by offering:

Reliable Real-Time Messaging  
• Messages instantly synced via Firebase Firestore, with fallback retries.

Push Notifications with FCM  
• Real-time alerts for new messages and friend activity—even when app is closed.

Smart Presence & Typing Indicators  
• Online status and typing feedback to enhance interaction.

Robust Multimedia Chat  
• Share images and media files directly from device or camera.

Secure and Scalable Backend  
• Firebase Authentication and Rules ensure authorized, protected data access.

Offline Resilience  
• Caches recent messages and uses WorkManager for delayed syncing.

Minimal UI with Theme Support  
• Clean design with dark/light mode, smooth transitions, and chat focus.
''',
    );
  }
}
