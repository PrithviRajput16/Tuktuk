import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({required this.changeScreen, super.key});
  final void Function(int i) changeScreen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 5, 100, 9),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text(
                      'OWNER',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onPressed: () {
                    changeScreen(0);
                  }),
              const SizedBox(
                height: 60,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text(
                    'DRIVER',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
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
