import 'package:flutter/material.dart';
import 'package:tuktuk/screens/driver_screen.dart';
import 'package:tuktuk/screens/fleet_screen.dart';
import 'package:tuktuk/screens/income_screen.dart';

class Owner extends StatefulWidget {
  const Owner({super.key});

  @override
  State<Owner> createState() => _OwnerState();
}

class _OwnerState extends State<Owner> {
  final screens = [
    const FleetScreen(),
    const DriverScreen(),
    const IncomeScreen(),
  ];
  var currentIndex = 0;
  Widget screen = const FleetScreen();
  void onChange(int index) {
    setState(() {
      currentIndex = index;
      screen = screens[index];
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const double iconSize = 35;
    Color color = Colors.white;
    return MaterialApp(
      title: 'Tuktuk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 8, 95, 11),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              size: iconSize,
              color: color,
            ),
          ),
          title: Text(
            "Pranav's Fleet ",
            style: TextStyle(
              color: color,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_sharp,
                size: iconSize,
                color: color,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: iconSize,
                color: color,
              ),
            ),
          ],
        ),
        body: screen,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          onTap: onChange,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airport_shuttle_outlined,
                size: iconSize,
              ),
              label: 'Fleet',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: iconSize,
              ),
              label: 'Drivers',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.swap_vert,
            //     size: iconSize,
            //   ),
            //   label: 'Transaction',
            // ),
          ],
        ),
      ),
    );
  }
}
