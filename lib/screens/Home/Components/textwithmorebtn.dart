import 'package:flutter/material.dart';

class Textwithmorebtn extends StatelessWidget {
  const Textwithmorebtn({
    Key? key,
    required this.Txt,
  }) : super(key: key);
  final String Txt;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Txt,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 17,
          width: 52,
          child: Center(
            child: Text(
              "more ",
              style: TextStyle(
                color: Color(
                  0xff696D78,
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xff1D1F27),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
