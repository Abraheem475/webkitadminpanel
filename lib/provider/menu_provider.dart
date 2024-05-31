import 'package:flutter/material.dart';

class MenuProvider with ChangeNotifier{

  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex;
  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldkey;

  void changeIndex(int index){
    _selectedIndex = index;
    notifyListeners();
  }

}