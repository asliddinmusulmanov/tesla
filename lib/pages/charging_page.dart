import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChargingPage extends StatefulWidget {
  const ChargingPage({super.key});

  @override
  State<ChargingPage> createState() => _ChargingPageState();
}

int v1 = 100;

class _ChargingPageState extends State<ChargingPage> {
  bool isVisible = true;
  double value = 50;
  @override
  Widget build(BuildContext context) {
    const double min = 0;
    const double max = 100;
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
              "Charging",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Image.asset(
              "assets/images/2024-04-15_00.38.16-removebg-preview.png",
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff1A1C1F),
                  ),
                ),
                Container(
                  width: v1.toDouble() * 3.5,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff9D00FF),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff9D00FF).withOpacity(0.7),
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: const Offset(0, -20),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Slider(
                value: v1.toDouble(),
                min: min,
                max: max,
                allowedInteraction: SliderInteraction.slideOnly,
                thumbColor: Colors.black,
                activeColor: const Color(0xff9D00FF),
                inactiveColor: const Color(0xff2A2D32),
                onChanged: (double value) {
                  setState(
                    () {
                      v1 = value.round();
                    },
                  );
                },
              ),
            ),
            Center(
              child: Text(
                "${v1.round()}",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Align(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
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
                    child: SizedBox(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          "Charging Overview",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: GestureDetector(
                          child: SvgPicture.asset(
                            "assets/icons/nextbutton.svg",
                            height: 120,
                            // width: 150,
                          ),
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                        ),
                      ),
                      // SizedBox(height: 25),
                      Visibility(
                        child: Align(
                          alignment: Alignment(-0.9, 0),
                          child: SizedBox(
                            height: 300,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                                color: const Color(0xff131313),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(-3, 10),
                                    color: Color(0xff5C6166),
                                  ),
                                  BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(10, 10),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      "Cybertruck\nsuper charge",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    trailing: Column(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 30,
                                          color: Colors.purpleAccent,
                                        ),
                                        Text("125 km")
                                      ],
                                    ),
                                    subtitle: Text(
                                      "Lithium batterys 3/4",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Cybertruck\nsuper charge",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    trailing: Column(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 30,
                                          color: Colors.purpleAccent,
                                        ),
                                        Text("125 km")
                                      ],
                                    ),
                                    subtitle: Text(
                                      "Lithium batterys 3/4",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Cybertruck\nsuper charge",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    trailing: Column(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 30,
                                          color: Colors.purpleAccent,
                                        ),
                                        Text("125 km")
                                      ],
                                    ),
                                    subtitle: Text(
                                      "Lithium batterys 3/4",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        visible: isVisible,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
