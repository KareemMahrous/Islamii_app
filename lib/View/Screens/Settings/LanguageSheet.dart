import 'package:flutter/material.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:islami/consts.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changelanguage('en');
              },
              child: provider.appLanguage == "en"
                  ? getSelectedLang(context, "English")
                  : getUnselectedLang("English")),
          SizedBox(
            height: 8,
          ),
          InkWell(
              onTap: () {
                provider.changelanguage("ar");
              },
              child: provider.appLanguage == "ar"
                  ? getSelectedLang(context, "العربية")
                  : getUnselectedLang("العربية"))
        ],
      ),
    );
  }

  Widget getUnselectedLang(String text) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    ]);
  }

  Widget getSelectedLang(BuildContext context, String text) {
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
