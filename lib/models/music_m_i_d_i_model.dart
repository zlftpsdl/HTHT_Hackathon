import 'package:flutter/material.dart';

class MusicMIDIModel {
  TextEditingController? textFieldTextController;
  FocusNode? textFieldFocusNode;

  void dispose() {
    textFieldTextController?.dispose();
    textFieldFocusNode?.dispose();
  }
}
