import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/moduls/Hadith_view/Hadithview.dart';
import 'package:islam/moduls/Quran_view/Quranview.dart';
import 'package:islam/moduls/Radio_view/Radioview.dart';
import 'package:islam/moduls/Sebha_view/Sebhaview.dart';
import 'package:islam/moduls/Settings_view/Settingsview.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../core/app-theme.dart';
import '../core/settings_provider.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "Homelayout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  late int selectedindex=0;
  List<Widget> screens=[const QuranView(),HadithView(),RadioView(),SebhaView(),SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    return Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  provider.getHomebackground(),
              ),
              fit: BoxFit.cover)
          ,),

        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(
              lang.islami,
            ),

          ),
          body: screens[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
              selectedindex = index;
            },
            //backgroundColor: AppTheme.primarycolor,
            //0xff141A2E
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/quran.png")),
                label: lang.quran,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/Group.png")),
                label: lang.hadith,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage("assets/icons/radio_blue.png")),
                label: lang.radio,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage("assets/icons/sebha_blue.png")),
                label: lang.tasbeh,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: lang.settings,
              ),
            ],
          ),

        ),
    );
  }
}
