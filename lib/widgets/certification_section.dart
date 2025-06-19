import 'package:flutter/material.dart';
import 'package:my_portfolio/model/certificate.dart';
import 'package:my_portfolio/widgets/certificate_card.dart';

class CertificateSection extends StatelessWidget {
  final List<Certificate> certificates;

  const CertificateSection({Key? key, required this.certificates})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        double childAspectRatio;

        if (constraints.maxWidth > 1000) {
          crossAxisCount = 3;
          childAspectRatio = 0.75;
        } else if (constraints.maxWidth > 600) {
          crossAxisCount = 2;
          childAspectRatio = 0.75;
        } else {
          crossAxisCount = 1;
          childAspectRatio = 0.90;
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: certificates.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: childAspectRatio,
            ),
            itemBuilder: (context, index) {
              return CertificateCard(certificate: certificates[index]);
            },
          ),
        );
      },
    );
  }
}
