import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.change});
  final void Function() change;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final c = widget.change
  // var c =
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to the next screen
    Timer(
      const Duration(seconds: 2),
      widget.change,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/yo33.gif'),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Transit Utility and knowledge',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Tracking for Urban Kommute',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        )),
      ),
    ));
  }
}
