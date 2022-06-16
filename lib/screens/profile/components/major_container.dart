import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/screens/profile/components/profile_button.dart';

import 'numbers.dart';

class Majorcontainer extends StatelessWidget {
  const Majorcontainer({
    Key? key,
  }) : super(key: key);

  get kprimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 212,
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
            Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
                left: 18,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("Assets/user.png"),
                    backgroundColor: Color(0xff4D5DFA),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'ELSA',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Icon(
                            Icons.workspace_premium,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Level 4 Ace Member",
                        style: TextStyle(
                          color: Color(
                            0xffB0BEC5,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "85%",
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 131,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(2),
                                  bottomLeft: Radius.circular(2)),
                              color: Color(0xff4D5DFA),
                            ),
                          ),
                          Container(
                            width: 17.16,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.cancel_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),

            //yhn sy krna h ab
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 10),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    numbers(
                      t1: "1,208",
                      t2: "Transactions",
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    numbers(
                      t1: "726",
                      t2: "Points",
                    ),
                    const VerticalDivider(
                      color: Colors.white,
                      thickness: 0.2,
                    ),
                    numbers(
                      t1: "8",
                      t2: "Rank",
                    ),
                    profilebutton(
                      iconn: Icons.cancel_outlined,
                      textt: "Explore",
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  profilebutton(
                      iconn: Icons.person_add_alt, textt: "Edit Profile"),
                  profilebutton(iconn: Icons.settings, textt: "Settings"),
                  profilebutton(iconn: Icons.share, textt: "Share"),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
