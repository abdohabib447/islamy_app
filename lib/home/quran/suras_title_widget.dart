import 'package:flutter/material.dart';

class SurasTitleWidget extends StatelessWidget {
  String text;
  SurasTitleWidget(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
      ),
    );
  }
}
