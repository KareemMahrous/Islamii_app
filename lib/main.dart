import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/Provider/AppConfigProvider.dart';
import 'package:islami/View/Screens/Ahadeth/AhadethDetailsScreen.dart';
import 'package:islami/View/Screens/HomePage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/consts.dart';
import 'package:provider/provider.dart';
import 'View/Screens/Quraan/SuraDetailsScreen.dart';

void main() {
  runApp(ChangeNotifierProvider<AppConfigProvider>(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      title: 'Islami',
      themeMode: provider.apptheme,
      theme: constants.lightTheme,
      darkTheme: constants.darkTheme,
      routes: {
        HomePage.routeName: (BuildContext) => HomePage(),
        AhadethDetailsScreen.routeName: (BuildContext) => AhadethDetailsScreen(),
        SuraDetailsScreen.routeName: (BuildContext) => SuraDetailsScreen()
      },
      initialRoute: HomePage.routeName,
    );
  }
}
