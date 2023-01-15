import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app2/quran_detailes/suras_detailes.dart';

import '../model/sura_details_arguments.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailesArguments argument =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailesArguments;
    if(suraLines.isEmpty){ readFile(argument.index+1);}
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_bacjround.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0, // backgroundColor: Colors.transparent,
          title: Text(argument.name),
        ),
        body: suraLines.isEmpty? CircularProgressIndicator():
        Card(
          margin: EdgeInsets.all(20),
          elevation: 15,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListView.separated(
              itemBuilder: (_ , index){
                return Suras(suraLines[index] , index+1);
              },
              separatorBuilder: (_ , index)=>
                  Container(height: 1,color: Theme.of(context).primaryColor ,),
              itemCount: suraLines.length
          ),
        ),

      ),
    );
  }

  readFile(int fileIndex)async{
    String fileContent = await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines=fileContent.trim().split("\n");
    setState(() {
      suraLines = lines;
    });
  }
}
