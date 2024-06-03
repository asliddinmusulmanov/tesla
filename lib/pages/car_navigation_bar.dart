import 'package:flutter/material.dart';

class CarNavigationBar extends StatefulWidget {
  const CarNavigationBar({super.key});

  @override
  State<CarNavigationBar> createState() => _CarNavigationBarState();
}

class _CarNavigationBarState extends State<CarNavigationBar> {
  bool _isEleveted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      // backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/Снимок_экрана_2024-04-13_в_22.08.00-removebg-preview.png",
            ),
          ],
        ),
      ),
    );
  }
}
