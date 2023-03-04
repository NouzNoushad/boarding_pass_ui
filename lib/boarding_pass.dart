import 'package:flight_boarding_pass/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomClipperDesign(),
            child: Container(
              height: size.height * 0.4,
              color: darkBlueColor,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/map_img.png',
                    height: size.height,
                    width: size.width,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                        Text(
                          'Boarding Pass',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 100, 20, 10),
            height: size.height * 0.82,
            width: size.width,
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(30),
              color: lightBlueColor,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Sun 25 Jan',
                              style: TextStyle(
                                color: darkBlueColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '08:30',
                              style: TextStyle(
                                color: darkBlueColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'CDG',
                                  style: TextStyle(
                                    color: darkBlueColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  'Paris',
                                  style: TextStyle(
                                    color: darkBlueColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: size.height * 0.08,
                              width: size.width * 0.45,
                              child: Stack(
                                children: [
                                  Center(
                                    child: customDottedLine(),
                                  ),
                                  const Center(
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: Icon(
                                        Icons.flight,
                                        size: 35,
                                        color: darkBlueColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: const [
                                Text(
                                  'FLR',
                                  style: TextStyle(
                                    color: darkBlueColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  'Florence',
                                  style: TextStyle(
                                    color: darkBlueColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Column(
                                children: const [
                                  Text(
                                    '1h 45m',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Non-stop',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  top: 12,
                                  child: Image.asset(
                                    'assets/clouds.png',
                                    color: Colors.white60,
                                    width: size.width * 0.8,
                                  ),
                                ),
                                Image.asset(
                                  'assets/flight_img.png',
                                ),
                                Positioned(
                                  bottom: 25,
                                  left: size.width * 0.3,
                                  child: const Text(
                                    'Emirates',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: darkBlueColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 45,
                    child: ClipPath(
                      clipper: CustomClipperDesign(),
                      child: Container(
                        height: size.height * 0.35,
                        width: size.width * 0.9,
                        color: darkBlueColor,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: flightDetails('Flight', 'PCDG714'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: flightDetails('Boarding', '09:10'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: flightDetails('Depart', '09:30'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: flightDetails('Gate', '9'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: flightDetails('Seat', '23A'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: flightDetails('Arrive', '11:45'),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: flightDetails('Class', 'First'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      child: flightDetails(
                                          'Passenger', 'John Doe'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: size.width * 0.12,
                    child: Image.asset(
                      'assets/bar_code.png',
                      height: size.height * 0.12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget flightDetails(String text, String details) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.teal,
            ),
          ),
          Text(
            details,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      );

  Widget customDottedLine() => Row(
      children: List.generate(
          300 ~/ 10,
          (index) => Expanded(
                  child: Container(
                color: index % 2 == 0 ? Colors.transparent : darkBlueColor,
                height: 2,
              ))));
}

class CustomClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double h = size.height;
    double w = size.width;

    path.lineTo(0, h / 1.2 - 50);
    path.quadraticBezierTo(20, h / 1.2, 80, h / 1.2);
    path.lineTo(w, h / 1.2);
    path.lineTo(w - 80, h / 1.2);
    path.quadraticBezierTo(w - 20, h - 50, w, h);
    path.lineTo(w, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
