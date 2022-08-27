import 'package:flutter/material.dart';
import 'package:islami/Model/Hadeth.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:islami/consts.dart';
import 'package:provider/provider.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const routeName = "AhadethDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Stack(children: [
      Image.asset(
        provider.isLightMode()
            ? "assets/images/bg3.png"
            : "assets/images/bgdarj.png",
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
            args.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: constants.unselectedicon),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: provider.isLightMode() ? Colors.white:constants.btmnavdark,
    ),
          child: SingleChildScrollView(
            child: Text(
              args.content,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                color: provider.isLightMode() ? Colors.black : constants.unselectedicondark,),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
