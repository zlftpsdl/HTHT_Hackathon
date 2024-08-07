import 'package:flutter/material.dart';

class BaseballTeam3Model {
  final unfocusNode = FocusNode();

  void dispose() {
    unfocusNode.dispose();
  }
}
