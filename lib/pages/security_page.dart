import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import 'package:tesla/pages/setting_page.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  int currentIndex = 0;
  List iconsList = [
    "assets/images/Снимок_экрана_2024-04-14_в_16.28.55-removebg-preview.png",
    "assets/images/img_6.png",
    "assets/images/Снимок_экрана_2024-04-14_в_16.56.41-removebg-preview.png",
    "assets/images/Снимок_экрана_2024-04-14_в_16.57.54-removebg-preview.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Tesla",
              style: TextStyle(
                color: Color(0xff5C6166),
              ),
            ),
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
            "assets/images/Снимок_экрана_2024-04-14_в_15.59.26-removebg-preview.png",
            height: 250,
            width: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Stack(
              children: [
                Align(
                  child: Container(
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
                    child: SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: iconsList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 55, top: 20),
                          child: Image.asset(
                            iconsList[index],
                            height: 40,
                            width: 40,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Align(
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
                  child: SizedBox(
                    height: 220,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: Column(
                  children: [
                    ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.grey,
                        size: 30,
                      ),
                      title: const Text(
                        "Security",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      leading: Image.asset(
                        "assets/images/Снимок_экрана_2024-04-14_в_17.33.53-removebg-preview.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.grey,
                        size: 30,
                      ),
                      title: const Text(
                        "Climate",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: const Text(
                        "Interior 15 C",
                        style: TextStyle(
                          color: Color(0xff5C6166),
                        ),
                      ),
                      leading: Image.asset(
                        "assets/images/img_7.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    ListTile(
                      trailing: const Icon(
                        Icons.navigate_next,
                        color: Colors.grey,
                        size: 30,
                      ),
                      title: const Text(
                        "Charging",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: const Text(
                        "70 percent",
                        style: TextStyle(
                          color: Color(0xff5C6166),
                        ),
                      ),
                      leading: Image.asset(
                        "assets/images/img_8.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
