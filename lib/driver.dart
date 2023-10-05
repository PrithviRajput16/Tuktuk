import 'package:flutter/material.dart';
import 'package:tuktuk/data/r_details.dart';

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
    final rStats = rDetails;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 92, 13),
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
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: const Color.fromARGB(255, 10, 92, 13),
              child: const Center(
                child: Text(
                  'Your Rickshaw Stats',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Flexible(
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                children: List.generate(
                  growable: true,
                  rStats.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Card(
                        color: const Color.fromARGB(255, 238, 251, 237),
                        margin: const EdgeInsets.all(18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            rStats[index]['icon'] as Icon,
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              rStats[index]['name'].toString(),
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              rStats[index]['value'].toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
