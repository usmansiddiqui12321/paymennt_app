
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/screens/notification/notification.dart';
import 'package:payment_app/screens/profile/profile.dart';

import '../../Recieve Money/RecieveMoney.dart';
import '../../components/phone_text_field.dart';

class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                bottom: 0.01,
              ),
              child: GestureDetector(
                onTap: () => Get.to(profile()),
                child: CircleAvatar(
                  backgroundImage: AssetImage("Assets/user.png"),
                ),
              ),
            ),
            const Phone_text(backgroundColor: 0xff343645),
            IconButton(
              onPressed: () {
                Get.to(notifi());
              },
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
