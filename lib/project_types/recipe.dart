import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_view.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectView(
      projectName: "Recipe",
      location: "Food & Cooking Application",
      industry: "Java,XML,Firebase",
      teamSize: "Solo",
      timeline: "2 Months",
      assetPaths: [
        "assets/images/r1.jpeg",
        "assets/images/r2.jpeg",
        "assets/images/r3.jpeg",
      ],
      description: '''
Your Android Recipe App is a Java-based mobile application designed to help users explore, search, and manage cooking recipes through powerful filtering, personalized suggestions, and a clean step-by-step cooking experience.

Purpose
Empower users—from beginners to culinary enthusiasts—to find recipes that suit their taste, dietary needs, and cooking skills, all while saving time and reducing food waste.

Key Features
• Smart Search: Find recipes using keywords, ingredients, or meal types (e.g., Breakfast, Dinner).
• Advanced Filters: Narrow down recipes by difficulty, cook time, cuisine, diet (Vegan, Keto), and more.
• AI Suggestions: Get personalized recipe suggestions based on saved recipes and search history.
• Step-by-Step Cooking: Detailed cooking instructions with step timers and progress tracking.
• Favorites & Collections: Save your favorite recipes and organize them into custom folders.
• Auto Shopping List: Generate a shopping list from selected recipes with ingredient grouping.
• Offline Mode: Access recently viewed and saved recipes without internet.
• Theme-Aware UI: Supports both light and dark mode for a modern user experience.

Tech Stack & Libraries
• Language: Java
• API: Spoonacular or Edamam Recipe API for recipe data
• Storage: SQLite for offline recipes and favorites
• UI: AndroidX, Material Components, ViewPager2 for step screens
• Network: Retrofit2 for API integration
• Background Tasks: WorkManager for syncing data
• Image Loading: Glide or Coil for recipe thumbnails

User Flow
• Onboarding: Quick preferences setup (e.g., diet, dislikes, allergies).
• Daily Use: Search or explore recipes with filters, view step-by-step guides, save favorites.
• Smart Suggestions: See trending or personalized recipes based on your activity.
• Grocery Management: Add recipe ingredients to a shopping list with one tap.
• Adjust: Filter suggestions and edit dietary settings anytime.

Value Proposition
• Saves time by narrowing down recipe options that match your needs.
• Reduces food waste with smart ingredient-based search.
• Encourages healthier eating with personalized filters.
• Simplifies cooking with intuitive, step-based guidance.
''',
      assetPaths2: ["assets/images/r4.jpeg", "assets/images/r5.jpeg"],
      url: "https://github.com/prashant000000004/RecipeFinder",
      problems: '''Fragmented Recipe Discovery
Users often rely on random blogs, social media posts, or scattered apps to find recipes, resulting in inconsistent quality and hard-to-follow instructions.

Lack of Personalization
Most apps fail to account for dietary restrictions, ingredient availability, or user preferences, leading to irrelevant or unusable recipe results.

Decision Fatigue
With hundreds of unfiltered choices and no smart guidance, users feel overwhelmed trying to decide what to cook.

Disconnected Cooking Experience
Recipe discovery, ingredient planning, and cooking steps are often spread across different apps or notes—making the process tedious and error-prone.''',
      solutions: '''
Your Android Recipe App solves these core issues by offering:

Centralized Recipe Discovery
• Search recipes by keyword, cuisine, or available ingredients.
• Filter by diet type (e.g., Vegan, Keto), difficulty, and cooking time.

Offline Access & Favorites
• Save favorite recipes to access anytime—even without internet.
• Mark recipes into collections (e.g., “Quick Dinners,” “Sweet Treats”).

Step-by-Step Guided Cooking
• Interactive instructions with timers and checklists for a smooth cooking flow.
• Swipe or tap to move through each step with clarity.

Auto-Generated Shopping Lists
• Turn selected recipes into organized ingredient lists instantly.
• Group items by category (e.g., Produce, Dairy, Spices) for easy grocery runs.

User-Friendly UI/UX
• Material Design components with support for Light/Dark mode.
• Clean layout and intuitive navigation optimized for fast access and minimal friction.
 ''',
    );
  }
}
