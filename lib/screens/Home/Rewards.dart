import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'dart:ui';
import 'Balance.dart';
import 'Components/rewards_headings.dart';
import 'Components/scratchbox.dart';

class rewards extends StatefulWidget {
  const rewards({Key? key}) : super(key: key);

  @override
  State<rewards> createState() => _rewardsState();
}

class _rewardsState extends State<rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Center(
              child: Container(
                height: 182,
                width: 336,
                decoration: BoxDecoration(
                  color: Color(0xff1F222A),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "CashBacks Earned",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "\$508",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffB0BEC5),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$85+ this month",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffAAAAAA),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    greybar(textt: "View your cashback history")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            headings(
              txt: "Scrachcards Won",
            ),
            Row(
              children: [
                scratchbox(),
                scratchbox(),
                scratchbox(),
              ],
            ),
            headings(txt: "Collect Rewards"),
            collectrewards_container(
                pic: "Assets/collect1.png",
                t1: "Flat 50 off On food Delivery",
                t2: "On orders above 99 on Swaggy, Somato",
                shades: 0xff242042,
                smallshades: 0xff242042),
            SizedBox(
              height: 15,
            ),
            collectrewards_container(
              pic: "Assets/collect2.png",
              t1: "20% Cashback On Amazon",
              t2: "Up to Rs 150 Minimum Order 1000",
              shades: 0xff422038,
              smallshades: 0xff422038,
            ),
            SizedBox(
              height: 15,
            ),
            collectrewards_container(
              pic: "Assets/girl3.png",
              t1: "50% cashback on foodpanda",
              t2: "Up to Rs 500 Minimum Order 1500",
              shades: 0xff422028,
              smallshades: 0xff422028,
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}

class collectrewards_container extends StatelessWidget {
  const collectrewards_container({
    Key? key,
    required this.pic,
    required this.t1,
    required this.t2,
    required this.shades,
    required this.smallshades,
  }) : super(key: key);
  final String pic, t1, t2;
  final int shades, smallshades;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      width: 336,
      // color: Colors.amberAccent,
      decoration: BoxDecoration(
        color: Color(shades),
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 101,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  pic,
                ),
              ),
              color: Color(smallshades),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  20,
                ),
                bottomLeft: Radius.circular(
                  20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t1,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  t2,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                collectnowbutton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class collectnowbutton extends StatelessWidget {
  const collectnowbutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 101,
      decoration: BoxDecoration(
        color: Color(0xffFA4D96)
            .withOpacity(0.15), //opacity 0-1 k bech mn hogi srf

        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Center(
        child: Text(
          "Collect Now",
          style: TextStyle(
            color: Color(
              0xffFA4D96,
            ),
          ),
        ),
      ),
    );
  }
}
