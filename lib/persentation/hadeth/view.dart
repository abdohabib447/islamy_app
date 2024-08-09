import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/persentation/hadeth/view_model.dart';

import '../../app/app_string/AppString.dart';

class HadethView extends StatefulWidget {
  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<Model> allAhadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadethList.isEmpty) loadAhadeth();
    return Scaffold(
        body: Container(
      child: allAhadethList.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                      'assets/image/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png'),
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: 2,
                ),
                Text(
                  AppString.suraName,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: 2,
                ),
                Expanded(
                  flex: 5,
                  child: ListView.separated(
                      itemBuilder: (_, index) {
                        return InkWell(
                          child: Center(
                            child: Text(allAhadethList[index].name),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              HadethViewModel.routeName,
                              arguments: Model(
                                  name: allAhadethList[index].name,
                                  content: allAhadethList[index].content),
                            );
                          },
                        );
                      },
                      separatorBuilder: (_, index) {
                        return Container(
                          color: Theme.of(context).primaryColor,
                          height: 1,
                        );
                      },
                      itemCount: allAhadethList.length),
                )
              ],
            ),
    ));
  }

  void loadAhadeth() async {
    List<Model> hadethList = [];
    String allAhadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadeth = allAhadeth.trim().split('#');
    for (int i = 0; i < ahadeth.length; i++) {
      String title = ahadeth[i].trim().substring(0, ahadeth.indexOf('\n'));
      print(title);
      String newContent = ahadeth[i].trim().substring(ahadeth.indexOf('\n') + 1);
      print(newContent);
      hadethList.add(Model(name: title, content: newContent));
    }
    setState(() {allAhadethList = hadethList;});
  }
}

class Model {
  String name;
  String content;
  Model({required this.name, required this.content});
}
