// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';

import 'components/Options_tiles.dart';
import 'components/major_container.dart';
import 'components/numbers.dart';
import 'components/profile_button.dart';
import 'components/second_major.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Majorcontainer(),
          SizedBox(
            height: 12,
          ),
          second_major(),
          SizedBox(
            height: 12,
          ),
          thirdmajor()
        ],
      ),
    );
  }
}

class thirdmajor extends StatelessWidget {
  const thirdmajor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      width: 380,
      decoration: BoxDecoration(
        color: Color(0xff1F222A),
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          optionstile(
            iconn: Icons.error_outline_outlined,
            textt: "About Us",
          ),
          optionstile(
            iconn: Icons.note_outlined,
            textt: "Terms and Conditions",
          ),
          optionstile(
            iconn: Icons.feedback_outlined,
            textt: "Feedback",
          ),
        ],
      ),
    );
  }
}
