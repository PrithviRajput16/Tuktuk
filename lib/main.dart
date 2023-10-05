import 'package:flutter/material.dart';
import 'package:tuktuk/driver.dart';
import 'package:tuktuk/owner.dart';
import 'package:tuktuk/screens/flash.dart';
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
  void change() {
    setState(() {
      currentScreen = LoginPage(changeScreen: changeScreen);
    });
  }

  Widget? currentScreen;
  final list = [
    const Owner(),
    const ErickshawDashboardApp(),
  ];
  void changeScreen(int i) {
    setState(() {
      currentScreen = list[i];
    });
  }

  @override
  void initState() {
    super.initState();
    // currentScreen = LoginPage(
    //   changeScreen: changeScreen,
    // );
    // super.initState();
    currentScreen = SplashScreen(change: change);
  }

  @override
  Widget build(BuildContext context) {
    return currentScreen!;
  }
}
