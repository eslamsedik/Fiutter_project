import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/core/app-theme.dart';
import 'package:provider/provider.dart';

import '../../core/settings_provider.dart';

class hadithcontent extends StatefulWidget {
  const hadithcontent({super.key});
  static const String routeName="hadithcontent";

  @override
  State<hadithcontent> createState() => _hadithcontentState();
}

class _hadithcontentState extends State<hadithcontent> {
  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    var index=ModalRoute.of(context)?.settings.arguments as String ;
    var provider = Provider.of<SettingsProvider>(context);
    loadhadith(index);

    return   Container(
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
                  Text("حديث رقم $index    ",style:TextStyle(
                      color:provider.isDark()? AppTheme.primarydarkcolor : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,

                  ),textAlign: TextAlign.center,),

                ],
              ),
              Divider(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(itemBuilder: (context, index) => Text(
                    hadithlist[index],style: TextStyle(
                    color: provider.isDark()? AppTheme.primarydarkcolor : Colors.black,

                  ),textAlign: TextAlign.center,
                  ),itemCount:hadithlist.length),
                ),)
            ],
          ),
        ),
      ),
    );
  }
  List <String> hadithlist = [];

  Future<void > loadhadith(String index) async {
    String ayat= await rootBundle.loadString("assets/files/hadith/h$index.txt");
    hadithlist= ayat.split("\n");
    setState(() {

    });
  }
}
