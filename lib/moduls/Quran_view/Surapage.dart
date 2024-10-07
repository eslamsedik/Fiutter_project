import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/moduls/Quran_view/Quranview.dart';
import 'package:provider/provider.dart';

import '../../core/app-theme.dart';
import '../../core/settings_provider.dart';

class SuraPage extends StatefulWidget {
  const SuraPage({super.key});
  static const String routeName="SuraPage";

  @override
  State<SuraPage> createState() => _SuraPageState();
}

class _SuraPageState extends State<SuraPage> {
  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    var data=ModalRoute.of(context)?.settings.arguments as Sura ;
    var provider = Provider.of<SettingsProvider>(context);
    loadayat(data.number);

    return  Container(
      decoration: BoxDecoration(
       image: DecorationImage(
         image: AssetImage(
             provider.getHomebackground(),
         ),
         fit: BoxFit.cover,
       )
      ),
      child: Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("اسلامي",style: theme.textTheme.titleLarge,),
    ),
        body: Container(
          margin: const EdgeInsets.all(25),
          padding: EdgeInsets.symmetric(vertical: 40,horizontal:35),
          decoration:  BoxDecoration(
              color:  provider.isDark()? Color(0xff141A2E).withOpacity(0.9) : Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(25),

            ),
         child: Column(
           children: [
             Row(
               children: [
                 SizedBox(width: 55,),
                 Text("سورة ${data.name}",style:TextStyle(
                 color:  provider.isDark()? AppTheme.primarydarkcolor : Colors.black,
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 )),
                 SizedBox(width: 15,),
                 Icon(Icons.play_arrow,color: Colors.amber,),
               ],
             ),
             Divider(),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ListView.builder(itemBuilder: (context, index) => Text(
                 ayatlist[index],style: TextStyle(
                   color: provider.isDark()? AppTheme.primarydarkcolor : Colors.black,

             ),textAlign: TextAlign.center,
             ),itemCount: ayatlist.length,),
               ),)
           ],
         ),
          ),
        ),
      );

  }

  List <String> ayatlist = [];

  Future<void > loadayat(String suranumber) async {
    String ayat= await rootBundle.loadString("assets/files/quran/$suranumber.txt");
    ayatlist= ayat.split("\n");
    setState(() {

    });
  }
}
