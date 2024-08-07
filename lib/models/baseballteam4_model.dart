import 'package:flutter/material.dart';

class BaseballTeam4Model {
  final unfocusNode = FocusNode();

  void dispose() {
    unfocusNode.dispose();
  }
}
