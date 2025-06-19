import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  final String role;
  final String company;
  final String years;

  const ExperienceItem({
    Key? key,
    required this.role,
    required this.company,
    required this.years,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                role,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  company,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  years,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Divider(thickness: 1),
        const SizedBox(height: 12),
      ],
    );
  }
}
