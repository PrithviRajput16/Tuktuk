import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({required this.changeScreen, super.key});
  final void Function(int i) changeScreen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text('OWNER'),
                  ),
                  onPressed: () {
                    changeScreen(0);
                  }),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text('DRIVER'),
                ),
                onPressed: () => changeScreen(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
