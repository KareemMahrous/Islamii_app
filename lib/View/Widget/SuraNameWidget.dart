import 'package:flutter/material.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:provider/provider.dart';
import '../../Model/SuraDetailsArgs.dart';
import '../Screens/Quraan/SuraDetailsScreen.dart';

class SuraNameWidget extends StatelessWidget {
  String SuraName;
  int suraIndex;

  SuraNameWidget(this.SuraName, this.suraIndex);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(SuraName, suraIndex));
      },
      child: Text(
        SuraName,
        style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
          color: provider.isLightMode() ? Colors.black : Colors.white, ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
