import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/main.dart';

import 'components/barcodecontainer.dart';

class RecieveMoney extends StatefulWidget {
  const RecieveMoney({Key? key}) : super(key: key);

  @override
  State<RecieveMoney> createState() => _notificationState();
}

class _notificationState extends State<RecieveMoney> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController textcontroller =
        TextEditingController(); // ye hamesha dalny ki adat bnani h
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: Column(
        children: [
          SizedBox(
            height: 52,
          ),
          barcodecontainer(),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Text(
                  "Other Options",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffDADADA),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 46,
            width: 336,
            decoration: BoxDecoration(
              color: Color(0xff343645),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    "Your Pay ID",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "xyz@gmail.com",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Icon(
                    Icons.folder_shared_outlined,
                    size: 25,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 46,
            width: 336,
            decoration: BoxDecoration(
              color: Color(0xff343645),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Text(
                    "Show bank account details",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Icon(
                    Icons.navigate_next_sharp,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
