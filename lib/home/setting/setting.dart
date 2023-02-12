import 'package:flutter/material.dart';
import 'package:islami_app2/home/setting/sitting_widget.dart';
import 'package:islami_app2/home/setting/sitting_widget_lang.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/sittings_provider.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SittingProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
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
                settingProvider.currentTheme! == ThemeMode.dark
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.lang,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {
              showSheetBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: (Theme.of(context).primaryColor))),
              child: Text(
                settingProvider.currentLang! == 'en'
                    ? AppLocalizations.of(context)!.en
                    : AppLocalizations.of(context)!.ar,
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

  void showSheetBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return SittingScreenWidgetLang();
        });
  }
}
