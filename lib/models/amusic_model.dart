import 'package:flutter/material.dart';

class AmusicModel {
  final unfocusNode = FocusNode();

  void initState(BuildContext context) {
    // Initialize any required data or state here
  }

  void dispose() {
    unfocusNode.dispose();
  }
}
