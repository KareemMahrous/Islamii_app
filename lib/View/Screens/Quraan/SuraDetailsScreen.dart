import 'package:flutter/material.dart';
import 'package:islami/consts.dart';

import '../../../Model/SuraDetailsArgs.dart';

class SuraDetailsScreen extends StatelessWidget {
   static const routeName = "SuraDetailsScreen";

  @override
  Widget build(BuildContext context) {
    //receiving from Model data from SuraDetailsArgs.dart
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return Stack(children: [
      Image.asset(
        "assets/images/bg3.png",
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            args.suraName,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
                color: constants.unselectedicon),
          ),
        ),

      )
    ]);
  }
}
