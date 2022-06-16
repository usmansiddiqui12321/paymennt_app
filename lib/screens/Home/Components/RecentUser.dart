import 'package:flutter/material.dart';
class RecentUsers extends StatelessWidget {
  const RecentUsers({
    Key? key,
    required this.Img,
    required this.Username,
  }) : super(key: key);
  final String Img, Username;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                child: Image(
                  image: AssetImage(
                    Img,
                  ),
                ),
              ),
            ),
            Text(
              Username,
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ],
    );
  }
}

