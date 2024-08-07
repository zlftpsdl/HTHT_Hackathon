import 'package:flutter/material.dart';

class Makeroom2Model {
  final unfocusNode = FocusNode();
  TabController? tabBarController;
  int countControllerValue1 = 0;
  int countControllerValue2 = 0;
  int countControllerValue3 = 0;
  int countControllerValue4 = 0;
  String? dropDownValue1;
  String? dropDownValue2;
  String? dropDownValue3;
  String? dropDownValue4;

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
