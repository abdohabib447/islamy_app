import 'package:flutter/material.dart';
import 'package:islami_app2/provider/sittings_provider.dart';
//import 'dart :math' as maths;
import 'dart:math' as maths;

import 'package:provider/provider.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  static const double pi = 3.1415926535897932;
  int index = 0;
  double angle = 0;
  int counter = 0;

  List<String> tasbehTab = [
    'سبحان الله',
    'الحمد الله',
    'لا اله الا الله',
    'الله واكبر',
    'لا حول ولا قوه الا بالله'
  ];

  @override
  Widget build(BuildContext context) {
    var sittingProvider = Provider.of<SittingProvider>(context);
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(sittingProvider.getSebhaLogohead()),
            GestureDetector(
              onTap: onTab,
              child: Transform.rotate(
                angle: angle,
                // angle: maths.pi / 100 * angle,
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height * .08),
                  child: Image.asset(sittingProvider.getSebhaLogobody()),
                ),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'عدد التسبيحات',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            '$counter',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            '${tasbehTab[index]}',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }

  void onTab() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    if (index == tasbehTab.length) {
      index = 0;
    }
    angle++;
    setState(() {});
  }
}
