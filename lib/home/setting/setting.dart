import 'package:flutter/material.dart';
import 'package:islami_app2/home/setting/sitting_widget.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Theme",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {
              showThemeButtomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: (Theme.of(context).primaryColor))),
              child: Text(
                'Light',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          Text(
            "Language",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: (Theme.of(context).primaryColor))),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          )
        ],
      ),
    );
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return const SittingScreenWidget();
        });
  }
}
