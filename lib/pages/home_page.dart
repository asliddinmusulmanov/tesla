import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import 'package:tesla/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List carList = [
    "assets/images/2021_tesla_model_s_angularfront-removebg-preview.png",
    "assets/images/Zasieg-Model-S-Long-Range-ograniczony.-Tesla-zaczyna-dziwna-zonglerke-2-removebg-preview.png",
    "assets/images/tesla-model-s-removebg-preview.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Text(
                "Tesla",
                style: TextStyle(
                  color: Color(0xff5C6166),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      index = (index + 1) % carList.length;
                    });
                  },
                  icon: const Icon(
                    Icons.navigate_next,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const Text(
              "Cybertruck",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Image.asset(
              carList[index],
              height: 200,
              width: 300,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.battery_25,
                  color: Color(0xff5C6166),
                  size: 25,
                ),
                SizedBox(width: 10),
                Text(
                  "km",
                  style: TextStyle(
                    color: Color(0xff5C6166),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                "130",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 150,
                  fontWeight: FontWeight.w100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
