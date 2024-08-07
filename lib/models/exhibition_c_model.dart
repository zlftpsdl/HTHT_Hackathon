import 'package:flutter/material.dart';

class ExhibitionCModel {
  /// State fields for stateful widgets in this page.
  final unfocusNode = FocusNode();
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
