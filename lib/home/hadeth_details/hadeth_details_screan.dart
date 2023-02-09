import 'package:flutter/material.dart';
import 'package:islami_app2/model/hadeth_model_attribute.dart';
import 'package:provider/provider.dart';

import '../../provider/sittings_provider.dart';

class HadethDetailsScrean extends StatelessWidget {
  static const String routeName = 'hadeth-name';
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SittingProvider>(context);
    Hadeth arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingProvider.getMainBackgroundImage()),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0, // backgroundColor: Colors.transparent,
            title: Text(
              arg.title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(20),
              elevation: 10,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  arg.content,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.headline6,
                ),
              )),
            ),
          ),
        ));
  }
}
