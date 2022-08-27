import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:islami/View/Screens/Settings/SettingsTab.dart';
import 'package:islami/consts.dart';
import 'Ahadeth/AhadethTab.dart';
import 'Quraan/QuraanTab.dart';
import 'SebhaTab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.isLightMode()
              ? "assets/images/bg3.png"
              : "assets/images/bgdarj.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context)!.appbartitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: constants.unselectedicon),
            ),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              currentpage = index;
              setState(() {});
            },
            currentIndex: currentpage,
            type: BottomNavigationBarType.fixed,
            backgroundColor: provider.isLightMode()?constants.btmnavlight:constants.btmnavdark,
            unselectedItemColor: constants.selectedicon,
            selectedItemColor: provider.isLightMode()? constants.unselectedicon:constants.unselectedicondark,
            selectedLabelStyle: TextStyle(color: constants.selectedicon),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/moshaf_blue.png"),
                  size: 50,
                ),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp, size: 50),
                label: AppLocalizations.of(context)!.ahadeth,
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.radio, size: 50),
              //   label: AppLocalizations.of(context)!.radio,
              // ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha_blue.png"),
                  size: 50,
                ),
                label: AppLocalizations.of(context)!.tasbeh,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 50),
                label: AppLocalizations.of(context)!.settings,
              ),
            ],
          ),
          body: tabs[currentpage],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuraanTab(),
    AhadethTab(),
    // RadioTab(),
    SebhaTab(),
    SettingsTab(),
  ];
// Widget CurrentPage() {
//   if (currentpage == 4) {
//     return QuraanTab();
//   } else if (currentpage == 3) {
//     return AhadethTab();
//   } else if (currentpage == 2) {
//     return RadioTab();
//   } else if (currentpage == 2) {
//     return SebhaTab();
//   } else {
//     return SettingsTab();
//   }
// }
}
