import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login.dart';
class Phone_text extends StatelessWidget {
  const Phone_text({
    Key? key, required this.backgroundColor,
  }) : super(key: key);
final int backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              const login_page(),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color(backgroundColor), //background color of button
            side: const BorderSide(
              width: 1,
            ), //border width and color
            elevation: 2, //elevation of button
            shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(30),
            ),
            padding:
                const EdgeInsets.all(5), //content padding inside button
          ),
          child: Center(
            child: TextFormField(
              
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter Your Phone Number',
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
