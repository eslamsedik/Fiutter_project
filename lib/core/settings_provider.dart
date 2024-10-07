import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLanguage="ar";
  ThemeMode CurrentThemeMode=ThemeMode.dark;

  void changeLanguage(String newLanguage) {
    currentLanguage = newLanguage;
    notifyListeners() ;
  }
  void changeMode(ThemeMode newMode) {
    CurrentThemeMode = newMode;
    notifyListeners() ;
  }
String getHomebackground(){
    return CurrentThemeMode == ThemeMode.dark? "assets/images/bg.png" : "assets/images/main_background.png";
}

bool isDark(){
    return CurrentThemeMode == ThemeMode.dark;

}

  String getsebhaheader(){
    return "assets/icons/body of seb7a.png";
  }
  String getsebhabody(){
    return"assets/icons/head of seb7a.png";
  }


}