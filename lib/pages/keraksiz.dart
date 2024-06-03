import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import 'package:tesla/pages/charging_page.dart';
import 'package:tesla/pages/home_page.dart';
import 'package:tesla/pages/percentage_page.dart';
import 'package:tesla/pages/security_page.dart';
import 'package:tesla/pages/setting_page.dart';

class Keraksiz extends StatefulWidget {
  const Keraksiz({Key? key}) : super(key: key);

  @override
  State<Keraksiz> createState() => _KeraksizState();
}

class _KeraksizState extends State<Keraksiz> {
  int currentIndex = 4;
  final List<Widget> pageList = [
    const SecurityPage(),
    const PercentagePage(),
    const ChargingPage(), // Example content for page 3// Example content for page 1// Example content for page 2
    Container(
      color: const Color(0xff131313),
    ), // Example content for page 3
    const HomePage(),
    const SettingPage(), // Example content for page 3
  ];
  void ontaped(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        // backgroundColor: const Color(0xff131313),
        backgroundColor: Colors.transparent,
        leading: NeumorphicButton(
          backgroundColor: const Color(0xff131313),
          onTap: () {},
          bottomRightShadowBlurRadius: 5,
          bottomRightShadowSpreadRadius: 5,
          borderWidth: 5,
          topLeftShadowBlurRadius: 5,
          topLeftShadowSpreadRadius: 1,
          topLeftShadowColor: Colors.grey.shade800,
          bottomRightShadowColor: Colors.black,
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(5),
          bottomRightOffset: const Offset(2, 2),
          topLeftOffset: const Offset(-2, -2),
          borderRadius: 50,
          child: const Icon(
            Icons.person,
            color: Color(0xff5C6166),
          ),
        ),
        actions: [
          NeumorphicButton(
            backgroundColor: const Color(0xff131313),
            onTap: () {
              ontaped(5);
            },
            bottomRightShadowBlurRadius: 5,
            bottomRightShadowSpreadRadius: 5,
            borderWidth: 5,
            topLeftShadowBlurRadius: 5,
            topLeftShadowSpreadRadius: 1,
            topLeftShadowColor: Colors.grey.shade800,
            bottomRightShadowColor: Colors.black,
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(5),
            bottomRightOffset: const Offset(2, 2),
            topLeftOffset: const Offset(-2, -2),
            borderRadius: 50,
            child: Icon(
              Icons.settings,
              color: currentIndex == 5
                  ? const Color(0xff9D00FF)
                  : const Color(0xff5C6166),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff131313),
      body: pageList[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: InkWell(
          onLongPress: () {
            ontaped(4);
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 60,
            backgroundImage: AssetImage(
                'assets/images/Снимок_экрана_2024-04-13_в_23.34.29-removebg-preview.png'),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img_5.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: SvgPicture.asset(
                  currentIndex == 0
                      ? "assets/icons/car2.svg"
                      : "assets/icons/car1.svg",
                  height: 20,
                ),
                onTap: () {
                  ontaped(0);
                },
              ),
              InkWell(
                child: SvgPicture.asset(
                  currentIndex == 1
                      ? "assets/icons/icon2.svg"
                      : "assets/icons/3d.svg",
                  height: 20,
                ),
                onTap: () {
                  ontaped(1);
                },
              ),
              InkWell(
                child: SvgPicture.asset(
                  currentIndex == 2
                      ? "assets/icons/davlat2.svg"
                      : "assets/icons/davlat.svg",
                  height: 20,
                ),
                onTap: () {
                  ontaped(2);
                },
              ),
              InkWell(
                child: SvgPicture.asset(
                  currentIndex == 3
                      ? "assets/icons/profile2.svg"
                      : "assets/icons/profile.svg",
                  height: 20,
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
