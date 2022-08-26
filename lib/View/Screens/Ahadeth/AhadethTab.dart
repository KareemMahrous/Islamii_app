import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Model/Hadeth.dart';
import 'package:islami/consts.dart';

import '../../Widget/AhadethWidget.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<Hadeth> allAhadeth = [];
  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) LoadHadethData();
    return Column(children: [
      Expanded(
        flex: 1,
        child: Image.asset(
          "assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png",
          height: MediaQuery.of(context).size.height * 0.3,
        ),
      ),
      Expanded(
        flex: 3,
        child: allAhadeth.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: constants.btmnav,
                  backgroundColor: Colors.transparent,
                ),
              )
            : ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 1,
                    color: constants.btmnav,
                    width: double.infinity,
                  );
                },
                itemCount: allAhadeth.length,
                itemBuilder: (buildContext, index) {
                  return AhadethWidget(allAhadeth[index]);
                },
              ),
      )
    ]);
  }



  void LoadHadethData() async {
    for (int i = 1; i <= 50; i++) {
      String fileContent =
          await rootBundle.loadString("assets/Ahadeth/h$i.txt");
      List<String> lines = fileContent.split("\n");
      String title = lines[0];
      String content = '';
      for (int j = 1; j <= lines.length; j++) {
        content += lines[1];
      }
      var h = Hadeth(title, content);
      allAhadeth.add(h);
    }
    setState(() {});
  }
}
