import 'package:flutter/material.dart';
import 'package:tuktuk/data/driver_data.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dList = drivers;
    return ListView.builder(
        itemCount: dList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name: ",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "${dList[index]['name']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   children: [
                      //     const Text(
                      //       "Amount Due: ",
                      //       style: TextStyle(
                      //         fontSize: 17,
                      //       ),
                      //     ),
                      //     Text(
                      //       "${dList[index]['amt']}",
                      //       style: const TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 17,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Number: ",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "${dList[index]['p_no']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
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
                            "License: ",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "${dList[index]['license']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
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
                            'Address: ',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            "${dList[index]['address']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      dList[index]['img'] as String,
                      height: 180,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
