import 'package:flutter/material.dart';

import '../../Model/SuraDetailsArgs.dart';
import '../Screens/Quraan/SuraDetailsScreen.dart';

class SuraNameWidget extends StatelessWidget {
  String SuraName;
  int suraIndex;

  SuraNameWidget(this.SuraName, this.suraIndex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,arguments: SuraDetailsArgs(SuraName, suraIndex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "100",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            SuraName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
