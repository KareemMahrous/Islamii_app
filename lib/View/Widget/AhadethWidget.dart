import 'package:flutter/material.dart';
import 'package:islami/Model/Hadeth.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:islami/View/Screens/Ahadeth/AhadethDetailsScreen.dart';
import 'package:provider/provider.dart';

class AhadethWidget extends StatelessWidget {
  Hadeth hadeth;
  AhadethWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
      Navigator.pushNamed(context, AhadethDetailsScreen.routeName,arguments: hadeth);
      },
      child: Text(
       hadeth.title ,
        style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
          color: provider.isLightMode() ? Colors.black : Colors.white,),
        textAlign: TextAlign.center,
      ),
    );
  }
}
