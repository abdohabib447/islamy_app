import 'package:flutter/material.dart';

class Suras extends StatelessWidget{
String content;
int index;
Suras( this.content , this.index);
  @override
  Widget build(BuildContext context) {
    return Text(("$content ($index)"),
    textDirection:TextDirection.rtl,
    style: const TextStyle(fontSize: 18),
      textAlign: TextAlign.center,

       );
  }
}
