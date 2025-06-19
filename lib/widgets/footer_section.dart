import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/about_screen.dart';
import 'package:my_portfolio/screens/blog_screen.dart';
import 'package:my_portfolio/screens/contact_screen.dart';
import 'package:my_portfolio/screens/home_page.dart';
import 'package:my_portfolio/screens/project_screen.dart';
import 'package:my_portfolio/screens/service_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Let's work together\nand build cool things!",
            style: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => ContactScreen()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF9C42F5),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
              shape: RoundedRectangleBorder(),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_right_alt, size: 22, color: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 64),

          // Footer Menu Grid
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FooterColumn(
                title: 'Main',
                links: {
                  'Home': HomePage(),
                  'About': AboutScreen(),
                  'Projects': ProjectScreen(),
                  'Contact': ContactScreen(),
                },
              ),
              FooterColumn(
                title: 'Others',
                links: {
                  'Services': ServiceScreen(),
                  'Certificates': BlogScreen(),
                },
              ),
              FooterColumn(
                title: 'Utility Pages',
                links: {
                  'Style Guide': HomePage(),
                  'Licenses': HomePage(),
                  'Changelog': HomePage(),
                  'Password Protected': HomePage(),
                  '404 Page': HomePage(),
                },
              ),
              FooterColumn(
                title: 'Follow me',
                links: {
                  'Github': 'https://github.com/prashant000000004',
                  'Linkedin': 'https://linkedin.com/in/prshntydv',
                  'Instagram': 'https://instagram.com',
                  'Facebook': 'https://facebook.com',
                },
                isExternal: true,
              ),
            ],
          ),

          const SizedBox(height: 40),
          const Divider(color: Colors.white24, thickness: 0.5),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              '© Prashant Yadav 2025 | Portfolio crafted with Flutter',
              style: TextStyle(color: Colors.white60, fontSize: 13),
            ),
          ),
          const SizedBox(height: 4),
          const Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Design by ',
                    style: TextStyle(color: Colors.white60, fontSize: 13),
                  ),
                  TextSpan(
                    text: 'Prashant Yadav',
                    style: TextStyle(
                      color: Color(0xFF9C42F5),
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final Map<String, dynamic> links;
  final bool isExternal;

  const FooterColumn({
    super.key,
    required this.title,
    required this.links,
    this.isExternal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 16),
          for (var entry in links.entries)
            _HoverableFooterItem(
              text: entry.key,
              onTap: () async {
                if (isExternal) {
                  final url = Uri.parse(entry.value as String);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  }
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => entry.value as Widget),
                  );
                }
              },
            ),
        ],
      ),
    );
  }
}

class _HoverableFooterItem extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const _HoverableFooterItem({required this.text, required this.onTap});

  @override
  State<_HoverableFooterItem> createState() => _HoverableFooterItemState();
}

class _HoverableFooterItemState extends State<_HoverableFooterItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: isHovered ? const Color(0xFF9C42F5) : Colors.white70,
            fontSize: 14,
            decoration:
                isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
