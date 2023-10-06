import 'package:flutter/material.dart';
import 'package:tuktuk/data/driver_data.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dList = drivers;
    return Container(
      decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Color.fromRGBO(4, 94, 7, 1),
          //     Colors.white,
          //   ],
          // ),
          // color: Color.fromARGB(255, 47, 99, 50),
          ),
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
              color: Color.fromARGB(255, 3, 55, 6),
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(60),
                bottomStart: Radius.circular(60),
              ),
            ),
            height: 290,
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
                        "Driver Details",
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
                  itemCount: dList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      // color: const Color.fromARGB(255, 219, 238, 215),
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
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                dList[index]['img'] as String,
                                height: 180,
                                width: 130,
                              ),
                            )
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
