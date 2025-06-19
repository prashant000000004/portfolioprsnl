import 'package:flutter/material.dart';
import 'package:my_portfolio/model/certificate.dart';

class CertificateCard extends StatelessWidget {
  final Certificate certificate;

  const CertificateCard({Key? key, required this.certificate})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          // Image section with fixed height
          Image.asset(
            certificate.assetPath,
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
          ),

          // Scrollable content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Category & Date
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            certificate.category,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Spacer(),
                        Text(
                          certificate.date,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    // Title
                    Text(
                      certificate.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 6),

                    // Description
                    Text(
                      certificate.description,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 10),

                    // Issuer
                    Text(
                      'Issuer: ${certificate.issuer}',
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(height: 10),

                    // Skills
                    Text(
                      'Skills Covered:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children:
                          certificate.skills
                              .map((s) => Chip(label: Text(s)))
                              .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
