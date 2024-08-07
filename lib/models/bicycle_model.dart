import 'package:flutter/material.dart';

class BicycleModel {
  TextEditingController? textFieldTextController;
  FocusNode? textFieldFocusNode;

  void dispose() {
    textFieldTextController?.dispose();
    textFieldFocusNode?.dispose();
  }
}
