import 'package:flutter/material.dart';
import 'package:islami/consts.dart';

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
           const Text(
            "100",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 2,
            height: MediaQuery.of(context).size.height * 0.05,
            color: constants.btmnav,
          ),
          Text(
            SuraName,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
