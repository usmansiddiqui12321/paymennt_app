import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notificationheading extends StatelessWidget {
  const Notificationheading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Notifications",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.cancel_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
