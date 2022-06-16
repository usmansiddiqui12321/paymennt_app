import 'package:flutter/material.dart';

import 'Options_tiles.dart';
class second_major extends StatelessWidget {
  const second_major({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 380,
      decoration: BoxDecoration(
        color: Color(0xff1F222A),
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 18.0,
          // bottom: 29,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.star
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            optionstile(
              iconn: Icons.receipt_long_outlined,
              textt: "All Transactions",
            ),
            optionstile(
              iconn: Icons.error_outline_outlined,
              textt: "Pending Receipts",
            ),
            optionstile(
              iconn: Icons.watch_later_outlined,
              textt: "Refund Status",
            ),
            optionstile(
              iconn: Icons.report_problem_sharp,
              textt: "Raise an Issue",
            ),
            optionstile(
              iconn: Icons.health_and_safety_rounded,
              textt: "Help and Support",
            ),
          ],
        ),
      ),
    );
  }
}
