import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islami/consts.dart';

import '../../../Model/suranames.dart';
import '../../Widget/SuraNameWidget.dart';

class QuraanTab extends StatelessWidget {
  const QuraanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            "assets/images/bgquran.png",
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
        Container(
          height: 2,
          color: constants.btmnav,
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 2,
              height: MediaQuery.of(context).size.height * 0.05,
              color: constants.btmnav,
            ),
            Text(
              "Ayat",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          height: 2,
          color: constants.btmnav,
          width: double.infinity,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemCount: SuraNames.length,
            itemBuilder: (buildContext, index) {
              return SuraNameWidget(SuraNames[index],index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 1,
                color: constants.btmnav,
                width: double.infinity,
              );
            },
          ),
        )
      ],
    );
  }
}
