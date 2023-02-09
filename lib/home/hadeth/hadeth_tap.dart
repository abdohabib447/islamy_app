import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app2/home/hadeth_details/hadeth_details_screan.dart';
import 'package:islami_app2/model/hadeth_model_attribute.dart';

import 'hadeth_title_widget.dart';

class hadeth extends StatefulWidget {
  @override
  State<hadeth> createState() => _hadethState();
}

class _hadethState extends State<hadeth> {
  List<Hadeth> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) hadethTitle();
    return Container(
      child: Column(
        children: [
          Image.asset(
              'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png'),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, HadethDetailsScrean.routeName,
                          arguments: Hadeth(allHadeth[index].title,
                              allHadeth[index].content));
                    },
                    child: HadethTitile(allHadeth[index]));
              },
              separatorBuilder: (_, index) => Container(
                height: 1,
                color: Theme.of(context).primaryColor,
              ),
              itemCount: allHadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  void hadethTitle() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> allHaddethLines = content.split('#');
    List<Hadeth> allHadeths = [];
    for (int i = 0; i < allHaddethLines.length; i++) {
      String hadethLine = allHaddethLines[i].trim();
      int firistIndex = hadethLine.indexOf('\n');
      String title = hadethLine.substring(0, firistIndex);
      String content = hadethLine.substring(firistIndex + 1);
      Hadeth h = Hadeth(title, content);
      allHadeths.add(h);
    }
    allHadeth = allHadeths;
    setState(() {});
  }
}
