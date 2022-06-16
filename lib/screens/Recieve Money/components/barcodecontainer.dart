import 'package:flutter/material.dart';
import 'package:get/get.dart';

class barcodecontainer extends StatelessWidget {
  const barcodecontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 336,
        height: 370,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 34.0),
                  child: Text(
                    "Recieve Money",
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
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 292,
              width: 288,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage(
                      "Assets/bar.png",
                    ),
                    fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }
}
