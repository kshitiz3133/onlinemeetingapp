import 'package:flutter/material.dart';
import 'package:onlinemeetingapp/Home/homepage.dart';
import 'FloatingBar/fbarcall.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // call homepage at the start
          Homepage(),
          // floatingbar at the top of stack(at the top of all pages)
          Fbarcall()
        ],
      ),
    );
  }
}
