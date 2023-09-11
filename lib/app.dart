import 'package:flutter/material.dart';
import 'package:onlinemeetingapp/Home/homepage.dart';
import 'FloatingBar/fbarcall.dart';
import 'Settings/Settings.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final lul = PageController(initialPage: 0);
  @override
  void  dispose(){
    lul.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Homepage and settings page
          PageView(
              physics: NeverScrollableScrollPhysics(),
            controller: lul,
            children: [
              Homepage(),
              Settings(),
            ],
              onPageChanged: (index){}
          ),
          // floatingbar at the top of stack(at the top of all pages)
          Fbarcall(),
          Positioned(
            bottom: 40,
            left: 80,
            child: IconButton(onPressed: (){
              lul.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.linear);
            }, icon: Icon(Icons.home)),
          ),
          Positioned(
            bottom: 40,
            right: 80,
            child: IconButton(onPressed: (){
              lul.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.linear);
            }, icon: Icon(Icons.settings)),
          )
        ],
      ),
    );
  }
}
