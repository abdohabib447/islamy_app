import 'package:flutter/material.dart';
import 'package:islamy_app/app/app_string/AppString.dart';
import 'dart:math' as maths;

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/domain/setting-provider.dart';
import 'package:provider/provider.dart';
class SebhaView extends StatefulWidget {
  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> tsabeh = ['سبان الله', 'الحمد لله', ' الله اكبر'];

  var counter = 0;

  double angle = 0;

  var index = 0;

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  onClick();
                },
                child: Transform.rotate(
                    angle:maths.pi / 100 * angle,
                    child: Image.asset('assets/image/body of seb7a.png'))),
            Text(AppLocalizations.of(context)!.number_of_tasbeh),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('$counter',style: TextStyle(color: settingProvider.themeColor()),),
            ),
            Container(
              child: Text(tsabeh[index],style: TextStyle(color: settingProvider.themeColor()),),
            ),
          ],
        ),
      ),
    );
  }

  void onClick() {
    counter++;
    if (counter % 33 == 0) {
      index++;
    }
    if (index == tsabeh.length) index = 0;
    angle = (100 / 33);
    setState(() {});
  }
}
