import 'package:flutter/material.dart';

class LogoVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      fit: BoxFit.contain,
    );
  }
}
