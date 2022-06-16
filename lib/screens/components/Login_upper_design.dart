import 'package:flutter/material.dart';

import '../../constants.dart';

class Login_Upper_Design extends StatelessWidget {
  const Login_Upper_Design({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperr(),
          child: Container(
            color: Color(0xff4D5DFA),
            height: MediaQuery.of(context).size.height * 0.65,
            width: 1200,
          ),
        ),
        Positioned(
          right: 172,
          height: 172.000005610,
          top: 300,
          left: 40,
          child: Image.asset(
            "Assets/girl.png",
          ),
        ),
        Positioned(
          height: 172,
          width: 80,
          left: 155,
          top: 250,
          child: Image.asset(
            "Assets/mobile.png",
          ),
        ),
        const Positioned(
          top: 100,
          // left: 155,
          right: 70,
          child: Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'LOGIN WITH YOUR\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  TextSpan(
                    text: 'MOBILE PHONE\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  TextSpan(
                    text: 'NUMBER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WaveClipperr extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    // path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width, 0);
    // path.quadraticBezierTo(size.width * .6, size.height, 0.01, 0.01);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
