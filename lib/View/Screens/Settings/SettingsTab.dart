import 'package:flutter/material.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:islami/View/Screens/Settings/ThemeSheet.dart';
import 'package:islami/consts.dart';
import 'package:provider/provider.dart';
import 'LanguageSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24,
              color: provider.isLightMode() ? Colors.black : Colors.white,),
            textAlign: TextAlign.start,
          ),
          InkWell(
            onTap: () {
              showLanguages();
            },
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: provider.isLightMode() ? constants.btmnavlight : Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.selectedLang(),
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24,
              color: provider.isLightMode() ? Colors.black : Colors.white,),
            textAlign: TextAlign.start,
          ),
          InkWell(
            onTap: () {
              showTheme();
            },
            child: Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: provider.isLightMode() ? constants.btmnavlight : Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.isLightMode()?"Light":"Dark",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
                  Icon(Icons.arrow_drop_down_sharp)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showTheme() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeSheet();
      },
    );
  }

  void showLanguages() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageSheet();
        });
  }
}
