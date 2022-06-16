import 'package:flutter/material.dart';
class ButtonDesign extends StatelessWidget {
  const ButtonDesign({
    Key? key,
    required this.sc1,
    required this.sc2,
    required this.m1,
    required this.m2,
    required this.mt1,
    required this.mt2,
    required this.I1,
    required this.I2,
  }) : super(key: key);
  final int sc1, sc2, m1, m2;
  final String mt1, mt2; // Text for major part of container
  final IconData I1, I2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                  color: Color(sc1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Icon(
                  I1,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 43,
                width: 135,
                decoration: BoxDecoration(
                  color: Color(m1),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    mt1,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Container(
                child: Icon(
                  I2,
                  color: Colors.white,
                ),
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                  color: Color(sc2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    mt2,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                height: 43,
                width: 135,
                decoration: BoxDecoration(
                  color: Color(m2),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
