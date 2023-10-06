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
          color: Color.fromRGBO(13, 47, 47, 1),
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.contain,
            alignment: Alignment.topLeft,
          ),
        ),
        // color: const Color.fromARGB(255, 7, 94, 10),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(121, 236, 232, 236),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 2,
                        children: List.generate(
                          growable: true,
                          rStats.length,
                          (index) {
                            return Container(
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 5,
                                    // spreadRadius: 10,
                                    offset: Offset(0, 10),
                                  )
                                ],
                                color: const Color.fromARGB(255, 238, 251, 237),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  rStats[index]['icon'] as Icon,
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    rStats[index]['name'].toString(),
                                    textAlign: TextAlign.center,
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
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
