import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentagePage extends StatefulWidget {
  const PercentagePage({super.key});

  @override
  State<PercentagePage> createState() => _PercentagePageState();
}

class _PercentagePageState extends State<PercentagePage> {
  double _currentValue = 20;
  double _currentValueHeat = 20;
  double _currentValueFan = 20;
  double _currentValueAc = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: Center(
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
              "Weather",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CircularPercentIndicator(
                animation: false,
                animationDuration: 1000,
                radius: 200,
                lineWidth: 30,
                percent: 0.7,
                progressColor: const Color(0xff9D00FF),
                backgroundColor: Colors.grey,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text(
                  "70 C",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "AC",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Icon(
                          Icons.ac_unit,
                          size: 30,
                          color: Color(0xff9D00FF),
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(-1, -1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2A2D32),
                              Color(0xff2A2D32),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: _currentValue,
                          max: 200,
                          onChanged: (double value) {
                            setState(
                              () {
                                _currentValue = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    children: [
                      Text(
                        "Heat",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      // SizedBox(width: 5),
                      Container(
                        child: Icon(
                          CupertinoIcons.sun_max_fill,
                          size: 30,
                          color: Color(0xff9D00FF),
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(-1, -1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2A2D32),
                              Color(0xff2A2D32),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: _currentValueHeat,
                          max: 200,
                          onChanged: (double value) {
                            setState(
                              () {
                                _currentValueHeat = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Fan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Icon(
                          Icons.access_time_outlined,
                          size: 30,
                          color: Color(0xff9D00FF),
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(-1, -1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2A2D32),
                              Color(0xff2A2D32),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: _currentValueFan,
                          max: 200,
                          onChanged: (double value) {
                            setState(
                              () {
                                _currentValueFan = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Text(
                        "AC",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 14),
                      Container(
                        child: Icon(
                          CupertinoIcons.cloud_bolt,
                          size: 30,
                          color: Color(0xff9D00FF),
                        ),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                            BoxShadow(
                              color: Color(0xff2A2D32),
                              offset: Offset(-1, -1),
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                          ],
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2A2D32),
                              Color(0xff2A2D32),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: _currentValueAc,
                          max: 200,
                          onChanged: (double value) {
                            setState(
                              () {
                                _currentValueAc = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
