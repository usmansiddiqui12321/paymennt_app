import 'package:flutter/material.dart';

class numbers extends StatelessWidget {
  const numbers({
    Key? key,
    required this.t1,
    required this.t2,
  }) : super(key: key);
  final String t1, t2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          t1,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff4D5DFA)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 14),
          child: Text(
            t2,
            style: TextStyle(
              fontSize: 12,
              color: Color(
                0xff939FA4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
