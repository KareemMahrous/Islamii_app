import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islami/consts.dart';
import 'Ahadeth/AhadethTab.dart';
import 'Quraan/QuraanTab.dart';
import 'RadioTab.dart';
import 'SebhaTab.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text("ISLAMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: constants.unselectedicon),),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentpage = index;
              setState(() {});
            },
            currentIndex: currentpage,
            type: BottomNavigationBarType.fixed,
            backgroundColor: constants.btmnav,
            selectedItemColor: constants.selectedicon,
            unselectedItemColor: constants.unselectedicon,
            selectedLabelStyle: TextStyle(color: constants.selectedicon),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/radio.png"),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/sebha_blue.png"),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/home.png"),
                label: 'Ahadeth',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/moshaf_blue.png"),
                label: "Qur'an",
              ),
            ],
          ),
          body: CurrentPage(),
        ),
      ],
    );
  }

  Widget CurrentPage() {
    if (currentpage == 3) {
      return QuraanTab();
    } else if (currentpage == 2) {
      return AhadethTab();
    } else if (currentpage == 1) {
      return RadioTab();
    } else {
      return SebhaTab();
    }
  }
}
