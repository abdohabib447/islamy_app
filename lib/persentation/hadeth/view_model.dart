import 'package:flutter/material.dart';
import 'package:islamy_app/persentation/hadeth/view.dart';

class HadethViewModel extends StatelessWidget {
static String routeName='hadeth view model';
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Model;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
      body: Card(
        child: SingleChildScrollView(child: Text(args.content)),
      ),
    );
  }
}
