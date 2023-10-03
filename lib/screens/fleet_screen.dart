import 'package:flutter/material.dart';
import 'package:tuktuk/data/fleet_data.dart';

class FleetScreen extends StatelessWidget {
  const FleetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tList = FleetList;
    Color? color = Colors.red;
    var batteryIcon = Icons.battery_3_bar;
    return ListView.builder(
        itemCount: tList.length,
        itemBuilder: (context, index) {
          var batteryPercent = tList[index]['battery'] as int;
          if (batteryPercent >= 90) {
            color = Colors.green;
            batteryIcon = Icons.battery_full_outlined;
          } else if (batteryPercent < 90 && batteryPercent > 60) {
            color = const Color.fromARGB(255, 247, 228, 58);
            batteryIcon = Icons.battery_5_bar;
          } else if (batteryPercent < 60 && batteryPercent > 40) {
            color = const Color.fromARGB(255, 245, 223, 24);
            batteryIcon = Icons.battery_4_bar;
          } else if (batteryPercent < 40 && batteryPercent > 20) {
            color = Colors.orange;
            batteryIcon = Icons.battery_3_bar;
          } else {
            color = Colors.red;
            batteryIcon = Icons.battery_1_bar;
          }
          return Card(
            elevation: 2,
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
                      Icon(
                        batteryIcon,
                        color: color,
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
