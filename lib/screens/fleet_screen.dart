import 'package:flutter/material.dart';
import 'package:tuktuk/data/fleet_data.dart';

class FleetScreen extends StatelessWidget {
  const FleetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tList = fleetList;
    Color? color = Colors.red;
    var batteryIcon = Icons.battery_3_bar;
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topCenter,
      //     end: Alignment.bottomCenter,
      //     colors: [
      //       Color.fromRGBO(4, 94, 7, 1),
      //       Colors.white,
      //     ],
      //   ),
      // ),
      // color: const Color.fromARGB(255, 47, 99, 50),
      child: Column(
        children: [
          Container(
            // child: Center(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [Text("Drivers Alloted ")],
            //   ),
            // ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 4, 50, 6),
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(60),
                bottomStart: Radius.circular(60),
              ),
            ),
            height: 290,
            // child: Center(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [Text("Drivers Alloted ")],
            //   ),
            // ),
            child: const Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "E - Rickshaw Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -70),
              child: ListView.builder(
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
                      // color: const Color.fromARGB(255, 219, 238, 215),

                      elevation: 2,
                      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'R. No: ',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      tList[index]['r_no'].toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  batteryIcon,
                                  color: color,
                                  size: 80,
                                ),
                                Text(
                                  '${tList[index]['battery']}%',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
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
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
