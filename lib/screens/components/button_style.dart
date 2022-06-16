import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../login.dart';

class BUTTONSTYLE extends StatelessWidget {
  const BUTTONSTYLE({
    Key? key,
    required this.Btntext,
    required this.NextPage,
  }) : super(key: key);
  final String Btntext;
  final void Function() NextPage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: NextPage,

          // Note to self k jab bhi Koi function bnyngy tw (){} ko ignore kr
          // k bs function dal dengy or jhn call krengy tw () => kr k required function dal dengy
          style: ElevatedButton.styleFrom(
            primary: Color(0xff4D5DFA), //background color of button
            side: const BorderSide(
              width: 1,
            ), //border width and color
            elevation: 2, //elevation of button
            shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.all(10), //content padding inside button
          ),
          child: Text(
            Btntext,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
