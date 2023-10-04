import 'package:flutter/material.dart';

class ErickshawDashboardApp extends StatelessWidget {
  const ErickshawDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ErickshawDashboard(),
    );
  }
}

class ErickshawDashboard extends StatelessWidget {
  const ErickshawDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title:
                          const Text('Connected To Aryan\'s \n E - Rickshaw'),
                      actions: [
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.bluetooth_connected))
        ],
        title: const Text('E-Rickshaw Dashboard'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(4, 94, 7, 1),
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'E-Rickshaw Stats',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              StatCard(
                title: 'Battery Level',
                value: '75%',
                icon: Icons.battery_full,
              ),
              StatCard(
                title: 'Speed',
                value: '25 km/h',
                icon: Icons.speed,
              ),
              StatCard(
                title: 'Mileage',
                value: '10 km/kWh',
                icon: Icons.directions_car,
              ),
              StatCard(
                title: 'Total Distance',
                value: '500 km',
                icon: Icons.location_on,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const StatCard(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      // margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 48,
              color: Colors.blue,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
