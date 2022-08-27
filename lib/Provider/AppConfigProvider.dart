import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{

  String appLanguage = 'en';
  ThemeMode apptheme = ThemeMode.light;

  bool isLightMode(){
    return apptheme==ThemeMode.light;
  }

  void changelanguage(String newlang){
    if (appLanguage==newlang)
      return;
    appLanguage = newlang;
    notifyListeners();
  }
  String selectedLang(){
    if (appLanguage=="en"){
      return "English";
    }
    return "العربية";
  }

  void changeTheme(ThemeMode newtheme){
    if (apptheme==newtheme)
      return;
    apptheme = newtheme;
    notifyListeners();
  }
  Object selectedTheme(){
    if (apptheme==ThemeMode.light){
      return ThemeMode.light;
    }
    return ThemeMode.dark;
}
}