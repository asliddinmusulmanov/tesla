import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:tesla/pages/keraksiz.dart';
import 'package:tesla/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

TextEditingController nameController = TextEditingController();
TextEditingController userNameController = TextEditingController();
TextEditingController carModelController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: Image.asset(
              "assets/images/Снимок_экрана_2024-04-13_в_15.45.32-removebg-preview (1).png",
              height: 150,
              width: 150,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ClayContainer(
              color: Color(0xff1A1C1F),
              borderRadius: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Color(0xff5C6166),
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ClayContainer(
              color: Color(0xff1A1C1F),
              borderRadius: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: userNameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                      color: Color(0xff5C6166),
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ClayContainer(
              color: Color(0xff1A1C1F),
              borderRadius: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: carModelController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Car Model",
                    hintStyle: TextStyle(
                      color: Color(0xff5C6166),
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ClayContainer(
              color: Color(0xff1A1C1F),
              borderRadius: 10,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color(0xff5C6166),
                    ),
                    border: InputBorder.none,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: IconButton(
              onPressed: () {},
              icon: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    backgroundColor: const Color(0xffD243E5),
                  ),
                  onPressed: () {
                    if (nameController.text.isNotEmpty &&
                        userNameController.text.isNotEmpty &&
                        carModelController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Keraksiz(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Ma'lumot kiriting"),
                        ),
                      );
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
