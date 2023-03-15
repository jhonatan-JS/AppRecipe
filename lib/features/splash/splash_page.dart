import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF734bd1),
            Color(0xFF996dff),
          ],
        ),
      ),
      child: const Text(
        'My Recipe',
        style: TextStyle(
            fontSize: 30.0, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    ));
  }
}
