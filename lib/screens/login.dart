import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({required this.changeScreen, super.key});
  final void Function(int i) changeScreen;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 47, 99, 50),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 47, 99, 50),
                ),
                child: Image.asset(
                  'assets/r3.png',
                  width: 340,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 237, 244, 199),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'RICKSHAW \n   OWNER',
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 67, 7),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    changeScreen(0);
                  }),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 237, 244, 199),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    'RICKSHAW \n   DRIVER',
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 67, 7),
                        fontSize: 30,
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
