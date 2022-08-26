import 'package:flutter/material.dart';
import 'package:islami/consts.dart';
import '../../../Model/SuraDetailsArgs.dart';
import 'package:flutter/services.dart' show rootBundle;

class SuraDetailsScreen extends StatefulWidget {
  static const routeName = "SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> Showayat = [];

  @override
  Widget build(BuildContext context) {
    //receiving from Model data from SuraDetailsArgs.dart
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    LoadSuraDetails(args.suraIndex);
    return Stack(children: [
      Image.asset(
        "assets/images/bg3.png",
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            args.suraName,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
                color: constants.unselectedicon),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Showayat.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: constants.btmnav,
                    backgroundColor: Colors.transparent,
                  ),
                )
              : ListView.separated(
                  itemCount: Showayat.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        Showayat[index]+"(${index+1})",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 1,
                      color: constants.btmnav,
                      width: double.infinity,
                    );
                  },
                ),
        ),
      )
    ]);
  }

  void LoadSuraDetails(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/quranfiles/${index + 1}.txt');
    List<String> ayat = fileContent.split("\n");
    Showayat = ayat;
    setState(() {});
  }
// void count (){
//   for (int i=1;i<=Showayat.length;i++){
//
//   };
//}
}
