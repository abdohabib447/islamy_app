import 'package:flutter/material.dart';

import '../../model/hadeth_model_attribute.dart';

class HadethTitile extends StatelessWidget {
  Hadeth hadeth;
  HadethTitile(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.headline4,
        textAlign: TextAlign.center,
      ),
    );
  }
}
