import 'package:flutter/material.dart';

class ProfileModel {
  TextEditingController? textController1;
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  FocusNode? textFieldFocusNode2;
  TextEditingController? emailAddressCreateTextController1;
  FocusNode? emailAddressCreateFocusNode1;
  TextEditingController? textController4;
  FocusNode? textFieldFocusNode3;
  TextEditingController? emailAddressCreateTextController2;
  FocusNode? emailAddressCreateFocusNode2;
  TextEditingController? textController6;
  FocusNode? textFieldFocusNode4;
  TextEditingController? emailAddressCreateTextController3;
  FocusNode? emailAddressCreateFocusNode3;
  TextEditingController? textController8;
  FocusNode? textFieldFocusNode5;

  late TabController tabBarController;

  ProfileModel();

  void dispose() {
    textController1?.dispose();
    textFieldFocusNode1?.dispose();
    textController2?.dispose();
    textFieldFocusNode2?.dispose();
    emailAddressCreateTextController1?.dispose();
    emailAddressCreateFocusNode1?.dispose();
    textController4?.dispose();
    textFieldFocusNode3?.dispose();
    emailAddressCreateTextController2?.dispose();
    emailAddressCreateFocusNode2?.dispose();
    textController6?.dispose();
    textFieldFocusNode4?.dispose();
    emailAddressCreateTextController3?.dispose();
    emailAddressCreateFocusNode3?.dispose();
    textController8?.dispose();
    textFieldFocusNode5?.dispose();
    tabBarController.dispose();
  }
}

extension AddToEnd on List<Widget> {
  List<Widget> addToEnd(Widget widget) {
    return [...this, widget];
  }
}
