import 'package:flutter/material.dart';
import 'package:tuktuk/owner.dart';
import 'package:tuktuk/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? currentScreen;
  final list = [const Owner()];
  void changeScreen(int i) {
    setState(() {
      currentScreen = list[i];
    });
  }

  @override
  void initState() {
    currentScreen = LoginPage(
      changeScreen: changeScreen,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return currentScreen!;
  }
}
