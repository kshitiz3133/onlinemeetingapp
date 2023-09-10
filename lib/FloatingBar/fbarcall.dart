import 'package:flutter/material.dart';
import 'fbar.dart';
import 'fbarcircle.dart';
class Fbarcall extends StatelessWidget {
  const Fbarcall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Fbar(),
        Fbarcircle()
      ],
    );
  }
}
