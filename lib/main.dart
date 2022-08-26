import 'package:flutter/material.dart';
import 'package:islami/View/Screens/HomePage.dart';

import 'View/Screens/Quraan/SuraDetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        HomePage.routeName: (BuildContext) => HomePage(),
        SuraDetailsScreen.routeName: (BuildContext) => SuraDetailsScreen()
      },
      initialRoute: HomePage.routeName,
    );
  }
}
