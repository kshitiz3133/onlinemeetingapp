import 'package:flutter/material.dart';
import 'app.dart';
void main(){
  runApp(const OnlineMeetingApp());
}
class OnlineMeetingApp extends StatelessWidget {
  const OnlineMeetingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // calls widget tree App
      home: App(),
    );
  }
}
