import 'package:flutter/material.dart';
import 'package:islami/consts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Provider/AppConfigProvider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  int index = 0;

  List<String> tsabeh = ["الله اكبر", "سبحان الله", "الحمدلله"];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.08,
                ),
                child: Image.asset(
                  provider.isLightMode()
                      ? "assets/images/head_of_sebha.png"
                      : "assets/images/darkheadofseb7a.png",
                ),
              ),
              InkWell(
                onTap: () {
                  onSebhaPressed();
                },
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .105),
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      provider.isLightMode()
                          ? "assets/images/bodyofseb7a.png"
                          : "assets/images/darkbodyofseb7a.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 20,
          ),
          Text(
            AppLocalizations.of(context)!.sebha_counter,
            style: TextStyle(
              fontSize: 24,
              color: provider.isLightMode() ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 40,
          ),
          Container(
              width: MediaQuery.of(context).size.width / 8,
              height: MediaQuery.of(context).size.height / 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: provider.isLightMode()
                    ? constants.btmnavlight
                    : constants.btmnavdark,
              ),
              child: Center(
                  child: Text(
                "$counter",
                style: TextStyle(
                  fontSize: 24,
                  color: provider.isLightMode() ? Colors.black : Colors.white,
                ),
              ))),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 40,
          ),
          Container(
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: provider.isLightMode()
                    ? constants.btmnavlight
                    : constants.btmnavdark,
              ),
              child: Center(
                  child: Text(
                tsabeh[index],
                style: TextStyle(
                  fontSize: 24,
                  color: provider.isLightMode() ? Colors.black : Colors.white,
                ),
              ))),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 30,
          ),

          InkWell(
            onTap: () {
              counter = 0;
              setState(() {});
            },
            child: Container(
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: provider.isLightMode()
                      ? constants.btmnavlight
                      : constants.btmnavdark,
                ),
                child: Center(
                    child: Text(
                  AppLocalizations.of(context)!.reset,
                  style: TextStyle(
                    fontSize: 24,
                    color: provider.isLightMode() ? Colors.black : Colors.white,
                  ),
                ))),
          )
        ],
      ),
    );
  }

  void onSebhaPressed() {
    counter++;
    if (counter % 10 == 0) {
      if (index == tsabeh.length - 1) {
        index = -1;
      }
      index++;
    }
    setState(() {
      angle += 20;
    });
  }
}
