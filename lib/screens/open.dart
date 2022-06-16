// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/screens/Home/Home.dart';
import 'package:payment_app/screens/login.dart';

import 'components/button_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(78.8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      "Assets/open.png",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            //yahan button asal ana h
            GestureDetector(
              onTap: () => Get.to(login_page()),
              child: Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                    color: Color(0xff4D5DFA),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff4D5DFA),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ]),
                child: Center(
                  child: Text(
                    "Instant Pay",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Your Perfect Payment Partner",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            dots()
          ],
        ),
      ),
    );
  }
}

class dots extends StatelessWidget {
  const dots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xff4D5DFA),
            radius: 4,
          ),
          const SizedBox(
            width: 4,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 4,
          ),
          const SizedBox(
            width: 4,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 4,
          ),
          const SizedBox(
            width: 4,
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 4,
          ),
        ],
      ),
    );
  }
}
