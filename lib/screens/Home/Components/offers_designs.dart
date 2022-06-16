import 'package:flutter/material.dart';
import 'package:payment_app/screens/Home/Balance.dart';

// ignore: camel_case_types
class offers_design extends StatelessWidget {
  const offers_design({
    Key? key,
    required this.pic,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.t4,
    // ignore: non_constant_identifier_names
    required this.CC,
  }) : super(key: key);
  final String t1, t2, t3, t4, pic;
  final int CC;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 340,
              decoration: BoxDecoration(
                color: Color(CC),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Container(
                    height: 78,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(78.8),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          pic,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t1,
                          style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          t2,
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          t3,
                          style: TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Color(0xffB0BEC5)),
                        ),
                        Text(
                          t4,
                          style: TextStyle(
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              color: Color(0xffB0BEC5)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
