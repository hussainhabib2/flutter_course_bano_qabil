import 'package:flutter/material.dart';

class FirstScreenProvider extends ChangeNotifier{
  bool isTap = false;
  List products = [];

  changeIsTap(){
    isTap = true;
    notifyListeners();
  }

}