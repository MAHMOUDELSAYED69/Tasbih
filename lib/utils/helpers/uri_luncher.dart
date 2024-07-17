import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class UrlManager {
  const UrlManager._();
  static Future<void> launchURL() async {
    try {
      final Uri uri =
          Uri.parse('https://donate.unrwa.org/page/landing_page/en_EN');
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        debugPrint('Could not launch $uri');
      }
    } catch (err) {
      debugPrint('Error launching URL: $err');
    }
  }
}
