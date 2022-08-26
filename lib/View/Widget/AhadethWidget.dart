import 'package:flutter/material.dart';
import 'package:islami/Model/Hadeth.dart';
import 'package:islami/View/Screens/Ahadeth/AhadethDetailsScreen.dart';

class AhadethWidget extends StatelessWidget {
  Hadeth hadeth;
  AhadethWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.pushNamed(context, AhadethDetailsScreen.routeName,arguments: hadeth);
      },
      child: Text(
       hadeth.title ,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
