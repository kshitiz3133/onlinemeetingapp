import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(height: 200, width: 300, color: Colors.deepPurple[50]),
              Container(height: 200, width: 300, color: Colors.deepPurple[200]),
              Container(
                  height: 200,
                  width: 300,
                  color: Colors.deepPurple[100],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
