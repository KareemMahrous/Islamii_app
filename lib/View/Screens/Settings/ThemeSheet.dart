import 'package:flutter/material.dart';
import 'package:islami/consts.dart';
import 'package:provider/provider.dart';

import '../../../Provider/AppConfigProvider.dart';

class ThemeSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return
      Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: provider.isLightMode()
                  ? getSelectedTheme(context, "Light")
                  : getUnselectedTheme("Light")),
          SizedBox(
            height: 8,
          ),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: !provider.isLightMode()
                  ? getSelectedTheme(context, "Dark")
                  : getUnselectedTheme("Dark")),
        ],
      ),
    );

  }
  Widget getUnselectedTheme(String text,) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ]);
  }

  Widget getSelectedTheme(BuildContext context, String text) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: TextStyle(fontSize: 18, color: constants.btmnavlight),
      ),
      Icon(
        Icons.check,
        color: constants.btmnavlight,
      )
    ]);
  }
}




