import 'package:flutter/material.dart';
import 'package:islamy_app/app/app_string/AppString.dart';
import 'package:islamy_app/domain/setting-provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                openThemeBottomsheet(context);
              },
              child: Container(
                margin: EdgeInsetsDirectional.all(10),
                padding: EdgeInsetsDirectional.only(start: 10),
                width: double.infinity,
                child: Text(settingProvider.myTheme == ThemeMode.light
                    ? AppLocalizations.of(context)!.light
                    : AppLocalizations.of(context)!.dark),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                openLangBottomsheet(context);
              },
              child: Container(
                margin: EdgeInsetsDirectional.all(10),
                padding: EdgeInsetsDirectional.only(start: 10),
                width: double.infinity,
                child: Text(settingProvider.local == 'en'
                    ? AppLocalizations.of(context)!.english
                    : AppLocalizations.of(context)!.arabic),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openThemeBottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => ThemeModalSheet());
  }
  void openLangBottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => LangModalSheet());
  }
}
class LangModalSheet extends StatelessWidget {
  const LangModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      margin: EdgeInsetsDirectional.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              settingProvider.changeMyLang('en');
            },
            child: settingProvider.local == 'en'
                ? getSelected(AppLocalizations.of(context)!.english)
                : getUnSelected(AppLocalizations.of(context)!.english),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              settingProvider.changeMyLang('ar');
            },
            child: settingProvider.local == 'ar'
                ? getSelected(AppLocalizations.of(context)!.arabic)
                : getUnSelected(AppLocalizations.of(context)!.arabic),
          )
        ],
      ),
    );
  }
}


class ThemeModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      margin: EdgeInsetsDirectional.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              settingProvider.chaneMyTheme(ThemeMode.light);
            },
            child: settingProvider.myTheme == ThemeMode.light
                ? getSelected(AppLocalizations.of(context)!.light)
                : getUnSelected(AppLocalizations.of(context)!.light),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              settingProvider.chaneMyTheme(ThemeMode.dark);
            },
            child: settingProvider.myTheme == ThemeMode.dark
                ? getSelected(AppLocalizations.of(context)!.dark)
                : getUnSelected(AppLocalizations.of(context)!.dark),
          )
        ],
      ),
    );
  }


}
Widget getSelected(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
      ),
      Icon(Icons.check)
    ],
  );
}

Widget getUnSelected(String text) {
  return Container(width: double.infinity, child: Text(text));
}