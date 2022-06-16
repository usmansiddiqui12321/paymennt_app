import 'package:flutter/material.dart';

class profilebutton extends StatelessWidget {
  const profilebutton({
    Key? key,
    required this.iconn,
    required this.textt,
  }) : super(key: key);
  final IconData iconn;
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 89,
      height: 28,
      decoration: BoxDecoration(
        color: Color(0xff343645),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              textt,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
          SizedBox(
            width: 6.35,
          ),
          Icon(
            iconn,
            color: Colors.white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
