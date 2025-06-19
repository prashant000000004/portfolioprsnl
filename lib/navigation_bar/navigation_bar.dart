import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/about_screen.dart';
import 'package:my_portfolio/screens/blog_screen.dart';
import 'package:my_portfolio/screens/contact_screen.dart';
import 'package:my_portfolio/screens/project_screen.dart';
import 'package:my_portfolio/screens/service_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavBar Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _hoverIndex = -1;

  final List<Widget> _pages = [
    Center(child: Text('Projects Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Services Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('About Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Blog Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Contact Page', style: TextStyle(fontSize: 24))),
  ];

  final List<String> _sectionLabels = [
    'Projects',
    'Services',
    'About',
    'Certificates',
    'Contact',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Desktop/Web layout
        if (constraints.maxWidth > 400) {
          return Scaffold(
            appBar: AppBar(actions: _buildDesktopNavItems()),
            body: _pages[0], // default landing page
          );
        }

        // Mobile layout with drawer
        return Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                ..._sectionLabels.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String label = entry.value;
                  return ListTile(
                    title: Text(label),
                    onTap: () {
                      Navigator.pop(context);
                      _navigateTo(context, idx);
                    },
                  );
                }).toList(),
              ],
            ),
          ),
          body: _pages[0],
        );
      },
    );
  }

  List<Widget> _buildDesktopNavItems() {
    return List<Widget>.generate(_sectionLabels.length, (i) {
      final label = _sectionLabels[i];
      return MouseRegion(
        onEnter: (_) => setState(() => _hoverIndex = i),
        onExit: (_) => setState(() => _hoverIndex = -1),
        child: GestureDetector(
          onTap: () => _navigateTo(context, i),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.center,
            child: Text(
              label,
              style: TextStyle(
                color: _hoverIndex == i ? Colors.purple : Colors.black,
                fontSize: 16,
                decoration:
                    _hoverIndex == i
                        ? TextDecoration.underline
                        : TextDecoration.none,
              ),
            ),
          ),
        ),
      );
    });
  }

  void _navigateTo(BuildContext context, int idx) {
    Widget screen;
    switch (idx) {
      case 0:
        screen = const ProjectScreen();
        break;
      case 1:
        screen = const ServiceScreen();
        break;
      case 2:
        screen = const AboutScreen();
        break;
      case 3:
        screen = const BlogScreen();
        break;
      case 4:
        screen = const ContactScreen();
        break;
      default:
        screen = const SizedBox.shrink();
    }

    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}
