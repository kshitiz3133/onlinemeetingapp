import 'package:flutter/material.dart';
import 'package:onlinemeetingapp/Home/homepage.dart';
import 'app.dart';
void main(){
  runApp(const OnlineMeetingApp());
}

class OnlineMeetingApp extends StatelessWidget {
  const OnlineMeetingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 158, 225, 199),
          // ···
        ),
      ),
      title: "OnlineMeetingApp",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primarySwatch: Colors.amber,
      // ),
      home: Homepage(),
    return const MaterialApp(
      // calls widget tree App
      home: App(),
    );
  }
}
