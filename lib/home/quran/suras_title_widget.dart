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
        style: const TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
