import 'package:flutter/material.dart';

class LoginModel {
  TabController? tabBarController;
  TextEditingController? emailAddressTextController;
  FocusNode? emailAddressFocusNode;
  TextEditingController? passwordTextController;
  FocusNode? passwordFocusNode;
  TextEditingController? emailAddressCreateTextController;
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordConfirmTextController;
  FocusNode? passwordConfirmFocusNode;

  bool passwordVisibility = false;
  bool passwordCreateVisibility = false;
  bool passwordConfirmVisibility = false;

  void dispose() {
    tabBarController?.dispose();
    emailAddressTextController?.dispose();
    emailAddressFocusNode?.dispose();
    passwordTextController?.dispose();
    passwordFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();
    emailAddressCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();
    passwordCreateFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
    passwordConfirmFocusNode?.dispose();
  }
}
