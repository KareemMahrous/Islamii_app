import 'package:flutter/material.dart';
import '../../consts.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: constants.btmnav,
            selectedItemColor: constants.selectedicon,
            unselectedItemColor: constants.unselectedicon,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/radio.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/sebha_blue.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/home.png"),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/moshaf_blue.png"),
                label: '',
              ),
            ],
          ),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            //       backgroundColor: Color(Colors.transparent),
            centerTitle: true,
            title: Text(
              "ISLAMI",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          body: Column(
            children: [],
          ),
        ),
      ],
    );
  }
}
