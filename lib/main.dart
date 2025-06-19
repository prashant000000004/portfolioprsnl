import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SuisseIntl',

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 207, 206, 210), // purple accent
          brightness: Brightness.light,
        ),

        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w700,
          ), // was headline1 :contentReference[oaicite:7]{index=7}

          displayMedium: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ), // was headline2 :contentReference[oaicite:8]{index=8}

          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ), // was headline4 :contentReference[oaicite:9]{index=9}

          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ), // was headline6 :contentReference[oaicite:10]{index=10}

          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
          ), // was bodyText1 :contentReference[oaicite:11]{index=11}

          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ), // was bodyText2 :contentReference[oaicite:12]{index=12}

          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ), // was caption :contentReference[oaicite:13]{index=13}

          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ), // was button :contentReference[oaicite:14]{index=14}
        ),
      ),
      home: HomePage(),
    );
  }
}
