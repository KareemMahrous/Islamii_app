import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:islami/consts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../Model/suranames.dart';
import '../../../Provider/AppConfigProvider.dart';
import '../../Widget/SuraNameWidget.dart';

class QuraanTab extends StatelessWidget {
  const QuraanTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
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
          color: constants.btmnavlight,
          width: double.infinity,
        ),
        Text(
          AppLocalizations.of(context)!.suraname,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: provider.isLightMode() ? Colors.black : Colors.white,
          ),
        ),
        Container(
          height: 2,
          color: constants.btmnavlight,
          width: double.infinity,
        ),
        Expanded(
          flex: 3,
          child: ListView.separated(
            itemCount: SuraNames.length,
            itemBuilder: (buildContext, index) {
              return SuraNameWidget(SuraNames[index], index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 1,
                color: constants.btmnavlight,
                width: double.infinity,
              );
            },
          ),
        )
      ],
    );
  }
}
