import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/moduls/Quran_view/Surapage.dart';
import 'package:islam/moduls/Quran_view/widgets/sura_title.dart';

class QuranView extends StatefulWidget {

  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List <String> sura_title_list=[
    "الفاتحة", "البقرة", "آل عمران", "النساء", "المائدة",
    "الأنعام", "الأعراف", "الأنفال", "التوبة", "يونس",
    "هود", "يوسف", "الرعد", "إبراهيم", "الحجر",
    "النحل", "الإسراء", "الكهف", "مريم", "طه",
    "الأنبياء", "الحج", "المؤمنون", "النور", "الفرقان",
    "الشعراء", "النمل", "القصص", "العنكبوت", "الروم",
    "لقمان", "السجدة", "الأحزاب", "سبأ", "فاطر",
    "يس", "الصافات", "ص", "الزمر", "غافر",
    "فصلت", "الشورى", "الزخرف", "الدخان", "الجاثية",
    "الأحقاف", "محمد", "الفتح", "الحجرات", "ق",
    "الذاريات", "الطور", "النجم", "القمر", "الرحمن",
    "الواقعة", "الحديد", "المجادلة", "الحشر", "الممتحنة",
    "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق",
    "التحريم", "الملك", "القلم", "الحاقة", "المعارج",
    "نوح", "الجن", "المزمل", "المدثر", "القيامة",
    "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس",
    "التكوير", "الانفطار", "المطففين", "الانشقاق", "البروج",
    "الطارق", "الأعلى", "الغاشية", "الفجر", "البلد",
    "الشمس", "الليل", "الضحى", "الشرح", "التين",
    "العلق", "القدر", "البينة", "الزلزلة", "العاديات",
    "القارعة", "التكاثر", "العصر", "الهمزة", "الفيل",
    "قريش", "الماعون", "الكوثر", "الكافرون", "النصر",
    "المسد", "الإخلاص", "الفلق", "الناس"];
  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);

    return  Column(
      children: [
        Image.asset(
          "assets/icons/quran_header_icn.png",
          scale: 4,
        ),
        Divider(),
         Row(
          children: [
            Expanded(
              child: Text(
                "رقم السورة",textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(
                height: 41,
                child: VerticalDivider()),
            Expanded(
              child: Text(
                "اسم السورة",textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
        Divider(),



        Expanded(
          child: ListView.builder(itemBuilder:(context, index) =>  InkWell(
            onTap: (){
          Navigator.pushNamed(context, SuraPage.routeName,arguments: Sura(name:sura_title_list[index], number:  (index+1).toString(),),);
            },
            child: SuraTitleWidget(
              suradata: Sura(name:sura_title_list[index], number:  (index+1).toString(),  ),
            ),
          ),itemCount: 114,),

        ),
      ],
    );
  }
}

class Sura {
  final String name;
  final String number;
  Sura({required this.name, required this.number});

}