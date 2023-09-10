import 'package:flutter/material.dart';
class Fbar extends StatelessWidget {
  const Fbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        left: 30,
        right: 30,
        bottom: 25,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 80,
            width: 1,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
