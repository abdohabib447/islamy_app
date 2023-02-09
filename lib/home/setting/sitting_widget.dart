import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/sittings_provider.dart';

class SittingScreenWidget extends StatefulWidget {
  const SittingScreenWidget({Key? key}) : super(key: key);

  @override
  State<SittingScreenWidget> createState() => _SittingScreenWidgetState();
}

class _SittingScreenWidgetState extends State<SittingScreenWidget> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SittingProvider>(context);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: (Theme.of(context).primaryColor))),
            child: InkWell(
                onTap: () {
                  settingProvider.changeTheme(ThemeMode.light);
                },
                child: settingProvider.isDarkMode()
                    ? usSelectedTheme('light')
                    : isSelectedTheme('light')),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: (Theme.of(context).primaryColor))),
            child: InkWell(
                onTap: () {
                  settingProvider.changeTheme(ThemeMode.dark);
                },
                child: settingProvider.isDarkMode()
                    ? isSelectedTheme('dark')
                    : usSelectedTheme('dark')),
          ),
        ],
      ),
    );
  }

  Widget isSelectedTheme(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const Icon(Icons.brightness_1),
      ],
    );
  }

  Widget usSelectedTheme(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
