import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/project_view.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectView(
      projectName: "E-Manager",
      location: "Money Management System",
      industry: "Java, Android Studio, SQLite",
      teamSize: "Solo Developer",
      timeline: "2 Months",
      assetPaths: [
        "assets/images/efirst.jpeg",
        "assets/images/esecond.jpeg",
        "assets/images/ethird.jpeg",
      ],
      description: '''
Your Android Expense Manager is a Java-based mobile app designed to help users take control of their personal finances through intuitive logging, smart visualizations, and actionable insights.

Purpose
Empower anyone—students, professionals, freelancers—to track all incomes and expenses in one place, instantly see where their money goes, and plan budgets that actually stick.

Key Features
• Transaction Management: Quick add/edit/delete of income and expense entries with date, amount, category, and notes.
• Categorization: Customizable categories (e.g., Food, Transport, Bills) for precise spending analysis.
• Visual Reports:
   - Pie charts for expense distribution by category.
   - Bar charts for period-over-period comparisons (daily, weekly, monthly).
• Budgeting: Set spending limits per category and get real-time alerts as you approach or exceed them.
• Historical Trends: Scrollable transaction history with date-range filters and search.
• Data Persistence: Local SQLite database with a clean DAO layer ensures offline access and fast queries.
• Material Design UI: Responsive, theme-aware interface (light/dark modes) for a modern, user-friendly experience.

Tech Stack & Libraries
• Language: Java
• Storage: SQLite with SQLiteOpenHelper & DAO pattern
• Charts: MPAndroidChart (or equivalent) for interactive graphs
• Notifications: WorkManager/AlarmManager for budget alerts
• UI: AndroidX, Material Components

User Flow
• Onboarding: Quick setup—create categories, set initial budgets.
• Daily Usage: Log every expense/income entry in 3 taps or less.
• Review: Check your dashboard to see charts and budget statuses at a glance.
• Adjust: Refine budgets or add new categories as your spending habits evolve.

Value Proposition
• Eliminates scattered spreadsheets or paper logs
• Reduces calculation errors with automated summaries
• Boosts financial awareness through visual feedback
• Encourages better budgeting habits via timely alerts
''',
      assetPaths2: ["assets/images/efourth.jpeg", "assets/images/efifth.jpeg"],
      url: "https://github.com/prashant000000004/ExpenseTracker",
      problems: '''
• Fragmented Expense Tracking
Most users record spending in notebooks or disparate apps, leading to incomplete data and forgotten transactions.

• Lack of Real-Time Insights
Without instant summaries or visual feedback, it’s hard to see where money is going or spot overspending in a given category.

• Manual Calculation Errors
Hand-tallying totals or switching between multiple spreadsheets invites mistakes and eats up time.

• Poor Budget Discipline
Users can’t easily set, monitor, and adjust budgets when they don’t have a clear, up-to-date picture of their cash flow. ''',
      solutions: '''
Centralized Transaction Logging
 •Add/Edit/Delete expenses & incomes on the fly.
 •Assign each entry to custom categories (e.g., “Food,” “Transport,” “Entertainment”).

Persistent Local Storage
 •SQLite database ensures all data is saved persistently on the device.
 •Java DAO layer abstracts CRUD operations for maintainability.

Interactive Visualizations
 •Pie Charts for category-wise expense breakdown.
 •Bar Charts for daily/weekly/monthly spend comparisons.
 •Powered by MPAndroidChart (or any other charting library).

Budgeting & Alerts
 •Set monthly spending limits per category.
 •Receive in-app notifications when you’re close to or exceed your budget.

History & Trends
 •Scrollable list of past transactions with search/filter by date, amount, or category.
 •Trendlines show whether spending is rising or falling over time.

User-Centered UI/UX
 •Material Design components for intuitive navigation.
 •Light/Dark theme toggle for accessibility and eye-comfort. ''',
    );
  }
}
