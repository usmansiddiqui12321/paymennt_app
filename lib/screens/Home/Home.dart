// ignore: file_names
import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/screens/Home/Balance.dart';
import 'package:payment_app/screens/Home/Home_main.dart';
import 'package:payment_app/screens/Home/Components/Offers.dart';
import 'package:payment_app/screens/Home/Rewards.dart';

import 'Components/Search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: kbackgorundColor,
        appBar: AppBar(
          toolbarHeight: 90,
          leading: const SizedBox(
            width: 0123321321,
          ),
          backgroundColor: const Color(0xff1D1F27),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const PreferredSize(
                  preferredSize: Size(50, 90),
                  child: search(),
                ),
              ],
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: const Text("Home"),
              ),
              Tab(
                child: const Text("Balance"),
              ),
              const Tab(
                child: Text(
                  "Offers",
                ),
              ),
              Tab(
                child: const Text(
                  "Rewards",
                ),
              ),
            ],
            indicatorColor: Colors.white,
            indicator: UnderlineTabIndicator(
              // borderSide: BorderSide(width: 3),

              insets: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Home_main(),
            const Balance(),
            offers(),
            rewards(),
          ],
        ),
      ),
    );
  }
}
