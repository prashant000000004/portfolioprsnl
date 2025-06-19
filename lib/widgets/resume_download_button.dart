import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadResumeButton extends StatelessWidget {
  final String resumeUrl;

  const DownloadResumeButton({super.key, required this.resumeUrl});

  void _downloadResume() async {
    final Uri url = Uri.parse(resumeUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch resume URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: _downloadResume,
      icon: Icon(Icons.download),
      label: Text("Download Resume"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    );
  }
}
