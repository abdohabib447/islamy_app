import 'package:flutter/material.dart';
import 'package:islamy_app/domain/setting-provider.dart';
import 'package:islamy_app/persentation/quran/view_model.dart';
import 'package:provider/provider.dart';

import '../../app/app_string/AppString.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/image/quran_screen.png'),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              height: 2,
            ),
            Text(
              AppLocalizations.of(context)!.sura_name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              color: Theme.of(context).primaryColor,
              height: 2,
            ),
            Expanded(
              flex: 5,
              child: ListView.separated(
                  itemBuilder: (_, index) {
                    return InkWell(
                        child: Center(child: Text(suraName[index] , style: TextStyle(color: settingProvider.themeColor()),) ,),
                      onTap: (){
                          Navigator.pushNamed(
                              context,
                              QuranViewModel.routeName,
                              arguments:Model(name: suraName[index], index: index) );
                      },
                    );
                  },
                  separatorBuilder: (_, index) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      height: 1,
                    );
                  },
                  itemCount: suraName.length),
            )
          ],
        ));
  }
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

}
class Model{
  String name;
  int index;
  Model({required this.name , required this.index});
}