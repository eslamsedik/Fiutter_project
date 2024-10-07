import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/app-theme.dart';
import '../../core/settings_provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var theme=Theme.of(context);
    return  Column(
     children: [
       Container(
         margin: EdgeInsets.only(top: 100,),
         child: Image(image: AssetImage("assets/icons/radio_header.png"),),
         
       ),
        Text("اذاعة القرءان الكريم",style: theme.textTheme.bodyLarge,),
       SizedBox(height: 40,),
        Row(
         children: [

            SizedBox(width: 110,),
            ImageIcon(AssetImage("assets/icons/Icon metro-next (1).png"),color: provider.isDark()? AppTheme.primarydarkcolor:AppTheme.primarycolor,),
           SizedBox(width: 40,),
            ImageIcon(AssetImage("assets/icons/Icon awesome-play.png"),color: provider.isDark()? AppTheme.primarydarkcolor:AppTheme.primarycolor,),
           SizedBox(width: 40,),
            ImageIcon(AssetImage("assets/icons/Icon metro-next.png"),color: provider.isDark()? AppTheme.primarydarkcolor:AppTheme.primarycolor,),
         ],
       )
     ],
    );
  }
}
