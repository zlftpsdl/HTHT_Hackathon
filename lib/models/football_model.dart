import 'package:flutter/material.dart';

class FootballModel {
  // State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
