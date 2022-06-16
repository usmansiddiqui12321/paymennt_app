import 'package:flutter/material.dart';

class optionstile extends StatelessWidget {
  const optionstile({
    Key? key,
    required this.iconn,
    required this.textt,
  }) : super(key: key);
  final IconData iconn;
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.only(bottom: 30.0),

      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                iconn,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 20,
                width: 170,
                child: Text(
                  textt,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Icon(
              Icons.navigate_next_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
