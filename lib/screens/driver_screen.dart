import 'package:flutter/material.dart';
import 'package:tuktuk/data/driver_data.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dList = Drivers;
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
                      Row(
                        children: [
                          const Text(
                            "Name: ",
                          ),
                          Text(
                            "${dList[index]['name']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                             ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Amount Due: "),
                          Text(
                            "${dList[index]['amt']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Phone Number: "),
                          Text(
                            "${dList[index]['p_no']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Address: '),
                          Text(
                            "${dList[index]['address']}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RS ${dList[index]['total_price']}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
