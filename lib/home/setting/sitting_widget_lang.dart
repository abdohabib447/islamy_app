import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../provider/sittings_provider.dart';

class SittingScreenWidgetLang extends StatefulWidget {
  const SittingScreenWidgetLang({Key? key}) : super(key: key);

  @override
  State<SittingScreenWidgetLang> createState() => _SittingScreenWidgetLangState();
}

class _SittingScreenWidgetLangState extends State<SittingScreenWidgetLang> {
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
                  settingProvider.getMainLang('ar');
                },
                child: settingProvider.isEnglish()
                    ? usSelectedlang(AppLocalizations.of(context)!.ar)
                    : isSelectedLang(AppLocalizations.of(context)!.ar)),
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
                  settingProvider.getMainLang('en');
                },
                child: settingProvider.isEnglish()
                    ? isSelectedLang(AppLocalizations.of(context)!.en)
                    : usSelectedTheme(AppLocalizations.of(context)!.en)),
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
        const Icon(Icons.check),
      ],
    );
  }

  Widget usSelectedTheme(String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
  Widget isSelectedLang(String lang){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Text(lang , style: Theme.of(context).textTheme.subtitle2,),
      Icon(Icons.check),
      ],
    );
  }
  Widget usSelectedlang(String lang) {
    return Text(
      lang,
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
