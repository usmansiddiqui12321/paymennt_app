import 'package:flutter/material.dart';
class headings extends StatelessWidget {
  const headings({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Text(
                txt,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
