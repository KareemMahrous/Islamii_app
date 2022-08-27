import 'dart:ui';

import 'package:flutter/material.dart';

class constants {
  static final Color btmnavlight = Color.fromRGBO(183, 147, 95, 1.0);
  static final Color btmnavdark = Color.fromARGB(255, 20, 26, 46);
  static final Color selectedicon = Color.fromRGBO(255, 255, 255, 1.0);
  static final Color unselectedicon = Color.fromRGBO(0, 0, 0, 1.0);
  static final Color unselectedicondark = Color.fromRGBO(250, 204, 29, 1.0);
  static final ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
    iconTheme: IconThemeData(color: constants.unselectedicon),
  ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     backgroundColor: btmnavlight,
   )
  );
  static final ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: constants.selectedicon),


  ));
}
