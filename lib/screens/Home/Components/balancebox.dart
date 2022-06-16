import 'package:flutter/material.dart';

class balancebox extends StatelessWidget {
  const balancebox({
    Key? key,
    required this.bankbalance,
    required this.textcolor,
    required this.balancecolor,
    required this.boxcolor,
    required this.bank, required this.accno,
  }) : super(key: key);
  final String bankbalance, bank ,accno;
  final int textcolor, balancecolor, boxcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 148,
      decoration: BoxDecoration(
        color: Color(boxcolor),
        borderRadius: BorderRadius.all(
          Radius.circular(
            25,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 19,
          ),
          Text(
            bank,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(
                textcolor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            accno,
            style: TextStyle(
              fontSize: 12,
              color: Color(
                // 0xffF4EDFF
                textcolor,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            bankbalance,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(
                // 0xffEDFEFF
                balancecolor,
              ),
            ),
          ),
          SizedBox(
            height: 19,
          )
        ],
      ),
    );
  }
}
