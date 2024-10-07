import 'package:flutter/material.dart';
import 'package:islam/Layout/Layout_View.dart';
import 'package:islam/core/app-theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'core/settings_provider.dart';
import 'moduls/Hadith_view/HadithContent.dart';
import 'moduls/Quran_view/Surapage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider

    (create: (context) =>SettingsProvider() ,
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: "Islami App",

      theme:provider.isDark()?AppTheme.darktheme:AppTheme.Lighttheme,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.currentLanguage),
      debugShowCheckedModeBanner: false,
      initialRoute: LayoutView.routeName,

      routes: {
        LayoutView.routeName: (context) => const LayoutView(),
        SuraPage.routeName: (context) => const SuraPage(),
        hadithcontent.routeName: (context) => const hadithcontent(),
      },
    );
  }
}
