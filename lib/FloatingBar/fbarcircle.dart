import 'package:flutter/material.dart';

class Fbarcircle extends StatelessWidget {
  const Fbarcircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Positioned(
          left: 30,
          right: 30,
          bottom: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          right: 30,
          bottom: 57,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 111, 201, 168),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
