import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';

import 'Components/balancebox.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgorundColor,
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 465,
                width: 380,
                decoration: BoxDecoration(
                  color: Color(0xff1F222A),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Portfolio value",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            Text(
                              "\$12757",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                  color: Color(0xffB0BEC5),
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              "In 3 Accounts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xffB0BEC5),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.bar_chart_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 0,
                            top: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              balancebox(
                                bankbalance: "\$5000",
                                bank: "Faderel Bank",
                                balancecolor: 0xffEDFEFF,
                                textcolor: 0xffF4EDFF,
                                boxcolor: 0xff652A5F,
                                accno: "1142524899652",
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              balancebox(
                                bankbalance: "\$4334",
                                textcolor: 0xffFFEDF1,
                                balancecolor: 0xffEDFEFF,
                                boxcolor: 0xff442A65,
                                bank: "State Bank",
                                accno: "1142524899652",
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 165,
                            top: 8,
                          ),
                          child: balancebox(
                            bankbalance: "\$3423",
                            textcolor: 0xffEDFFF4,
                            balancecolor: 0xffEDFFEF,
                            boxcolor: 0xff2A6550,
                            bank: "Best Bank",
                            accno: "1142521547852",
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        greybar(textt: "Add / Manage Accounts"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class greybar extends StatelessWidget {
  const greybar({
    Key? key,
    required this.textt,
  }) : super(key: key);
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        height: 43,
        width: 320,
        decoration: BoxDecoration(
          color: Color(0xff343645),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Center(
          child: Text(
            "Add / Manage Accounts",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
