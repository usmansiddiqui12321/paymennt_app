import 'package:flutter/material.dart';
class scratchbox extends StatelessWidget {
  const scratchbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 12,
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Color(0xff242042),
            borderRadius: BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        )
      ],
    );
  }
}