import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/settings_provider.dart';

class SettingsView extends StatefulWidget {

   SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {

  @override
  Widget build(BuildContext context) {

    var lang = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);

    var languageslist=["English", "عربي", ];
    var modelist = provider.currentLanguage == "en" ? ["Dark", "Light"] : ["غامق", "مضئ"];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(lang.settings,style:TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold,
            color: provider.isDark()? Colors.white: Colors.black,


          ),),

          const SizedBox(height: 20,),
           Text(lang.language,style:theme.textTheme.bodyLarge ,),

       const SizedBox(height: 20,),
      CustomDropdown<String>(
        items: languageslist,
        initialItem: provider.currentLanguage=="en" ? languageslist[0] :languageslist[1],
        onChanged: (value) {
          if (value=="English"){
            provider.changeLanguage("en");
          }
         if (value=="عربي"){
            provider.changeLanguage("ar");
          }
          log('changing value to: $value');
        },
      ),

          const SizedBox(height: 50,),
          Text(lang.theme,style:theme.textTheme.bodyLarge ,),

          const SizedBox(height: 20,),

          CustomDropdown<String>(
            initialItem: provider.CurrentThemeMode==ThemeMode.dark ? modelist[0] :modelist[1],
            items: modelist,
            onChanged: (value) {
              if (value=="Dark"||value=="غامق"){
                provider.changeMode(ThemeMode.dark);
              }
              if (value=="Light"||value=="مضئ"){
                provider.changeMode(ThemeMode.light);
              }
              log('changing value to: $value');
            },
          ),
        ],

      ),
    );
  }
}
