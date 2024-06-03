import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool switch1 = true;
  bool switch2 = true;
  bool switch3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Cybertruck",
                style: TextStyle(
                  color: Color(0xff5C6166),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const Text(
              "Diagnosis",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Image.asset(
              "assets/images/2021_tesla_model_s_angularfront-removebg-preview.png",
              height: 190,
              width: 250,
            ),
            Align(
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff131313),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(-3, -3),
                        color: Color(0xff5C6166),
                      ),
                      BoxShadow(
                        blurRadius: 10,
                        offset: Offset(10, 10),
                        color: Colors.black,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "System temp",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 5),
                        CircularPercentIndicator(
                          animation: false,
                          animationDuration: 1000,
                          radius: 80,
                          lineWidth: 10,
                          percent: 0.24,
                          progressColor: const Color(0xff9D00FF),
                          backgroundColor: Colors.grey,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: const Text(
                            "24 C",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 30),
                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.34,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 40),
                          child: Text(
                            "Sensors",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/images/Снимок_экрана_2024-04-15_в_15.33.19-removebg-preview.pngСнимок_экрана_2024-04-15_в_15.33.19-removebg-preview.png",
                          height: 110,
                          width: 120,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff131313),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-3, -3),
                          color: Color(0xff5C6166),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(10, 10),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(
                  height: 210,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff131313),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-3, -3),
                          color: Color(0xff5C6166),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(10, 10),
                          color: Colors.black,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Security',
                              style: TextStyle(color: Colors.grey)),
                          ListTile(
                            leading: Icon(
                              Icons.lock,
                              color: Color(0xffD243E5),
                            ),
                            title: Text('Doors Locked',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10)),
                            trailing: Switch(
                                value: switch1,
                                onChanged: (value) {
                                  setState(() {
                                    switch1 = value;
                                  });
                                }),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.lock,
                              color: Color(0xffD243E5),
                            ),
                            title: Text('Dog Mode',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 9)),
                            trailing: Switch(
                                value: switch2,
                                onChanged: (value) {
                                  setState(() {
                                    switch2 = value;
                                  });
                                }),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.lock,
                              color: Color(0xffD243E5),
                            ),
                            title: Text('Security Mode',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 9)),
                            trailing: Switch(
                              value: switch3,
                              onChanged: (value) {
                                setState(() {
                                  switch3 = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 30),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.34,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            "Overall Health",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        LinearPercentIndicator(
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 8,
                          percent: 0.5,
                          progressColor: Colors.purple,
                          backgroundColor: Colors.purple.shade200,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff131313),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-3, -3),
                          color: Color(0xff5C6166),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(10, 10),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
