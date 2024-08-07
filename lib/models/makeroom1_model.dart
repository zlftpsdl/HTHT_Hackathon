import 'package:flutter/material.dart';


class Makeroom1Model {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode1;
  TextEditingController? emailAddressCreateTextController1;
  String? Function(BuildContext, String?)? emailAddressCreateTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode2;
  TextEditingController? emailAddressCreateTextController2;
  String? Function(BuildContext, String?)? emailAddressCreateTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode3;
  TextEditingController? emailAddressCreateTextController3;
  String? Function(BuildContext, String?)? emailAddressCreateTextController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode4;
  TextEditingController? emailAddressCreateTextController4;
  String? Function(BuildContext, String?)? emailAddressCreateTextController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;

  void initState() {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressCreateFocusNode1?.dispose();
    emailAddressCreateTextController1?.dispose();
    textFieldFocusNode1?.dispose();
    textController2?.dispose();
    textFieldFocusNode2?.dispose();
    textController3?.dispose();
    emailAddressCreateFocusNode2?.dispose();
    emailAddressCreateTextController2?.dispose();
    textFieldFocusNode3?.dispose();
    textController5?.dispose();
    emailAddressCreateFocusNode3?.dispose();
    emailAddressCreateTextController3?.dispose();
    textFieldFocusNode4?.dispose();
    textController7?.dispose();
    emailAddressCreateFocusNode4?.dispose();
    emailAddressCreateTextController4?.dispose();
    textFieldFocusNode5?.dispose();
    textController9?.dispose();
  }
}
