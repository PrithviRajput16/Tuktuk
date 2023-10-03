import 'package:flutter/material.dart';
import 'package:tuktuk/data/fleet_data.dart';

class FleetScreen extends StatelessWidget {
  const FleetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tList = FleetList;
    return ListView.builder(
        itemCount: tList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Driver: ',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            tList[index]['driver_alloted'].toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            'R. No: ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            tList[index]['r_no'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Route: ',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            tList[index]['route'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),

                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.battery_2_bar,
                        color: Colors.orange,
                        size: 60,
                      ),
                      Text(
                        '${tList[index]['battery']}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 21),
                      ),
                    ],
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(10),
                  //   child: Image.asset(
                  //     'assets/profile.jpeg',
                  //     height: 150,
                  //   ),
                  // )
                ],
              ),
            ),
          );
        });
  }
}
