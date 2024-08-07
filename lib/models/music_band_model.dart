import 'package:flutter/material.dart';

class MusicBandModel {
  TextEditingController? textFieldTextController;
  FocusNode? textFieldFocusNode;

  void dispose() {
    textFieldTextController?.dispose();
    textFieldFocusNode?.dispose();
  }
}
