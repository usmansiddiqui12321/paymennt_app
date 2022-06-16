import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/screens/Home/Home.dart';
import 'package:payment_app/screens/components/button_style.dart';

import 'components/Login_upper_design.dart';
import 'components/phone_text_field.dart';

// ignore: camel_case_types
class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Login_Upper_Design(),
            SizedBox(
              height: 40,
            ),
            // BUTTONSTYLE(Btntext: "jani agly page py kato"),
            Phone_text(
              backgroundColor: 0xFFEDEFFF,
            ),
            SizedBox(
              height: 10,
            ),
            BUTTONSTYLE(
              Btntext: "Verify",
              NextPage: () => Get.to(Home()),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Your personal details are safe with us ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            Text(
              "Read our Privacy Policy and Terms and Conditions",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
