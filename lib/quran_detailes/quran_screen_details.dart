import 'package:flutter/material.dart';

import '../model/sura_details_arguments.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'sura details';
  @override
  Widget build(BuildContext context) {
    SuraDetailesArguments argument =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailesArguments;
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
      ),
    );
  }
}
