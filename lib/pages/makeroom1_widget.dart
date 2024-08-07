import 'package:flutter/material.dart';
export '/models/makeroom1_model.dart';
import './makeroom2_widget.dart';

class Makeroom1Widget extends StatefulWidget {
  const Makeroom1Widget({super.key});

  @override
  State<Makeroom1Widget> createState() => _Makeroom1WidgetState();
}

class _Makeroom1WidgetState extends State<Makeroom1Widget>
    with TickerProviderStateMixin {
  late TextEditingController _emailAddressCreateTextController1;
  late FocusNode _emailAddressCreateFocusNode1;
  late TextEditingController _textController2;
  late FocusNode _textFieldFocusNode1;
  late TextEditingController _textController3;
  late FocusNode _textFieldFocusNode2;
  late TextEditingController _emailAddressCreateTextController2;
  late FocusNode _emailAddressCreateFocusNode2;
  late TextEditingController _textController5;
  late FocusNode _textFieldFocusNode3;
  late TextEditingController _emailAddressCreateTextController3;
  late FocusNode _emailAddressCreateFocusNode3;
  late TextEditingController _textController7;
  late FocusNode _textFieldFocusNode4;
  late TextEditingController _emailAddressCreateTextController4;
  late FocusNode _emailAddressCreateFocusNode4;
  late TextEditingController _textController9;
  late FocusNode _textFieldFocusNode5;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    _emailAddressCreateTextController1 = TextEditingController();
    _emailAddressCreateFocusNode1 = FocusNode();
    _textController2 = TextEditingController();
    _textFieldFocusNode1 = FocusNode();
    _textController3 = TextEditingController();
    _textFieldFocusNode2 = FocusNode();
    _emailAddressCreateTextController2 = TextEditingController();
    _emailAddressCreateFocusNode2 = FocusNode();
    _textController5 = TextEditingController();
    _textFieldFocusNode3 = FocusNode();
    _emailAddressCreateTextController3 = TextEditingController();
    _emailAddressCreateFocusNode3 = FocusNode();
    _textController7 = TextEditingController();
    _textFieldFocusNode4 = FocusNode();
    _emailAddressCreateTextController4 = TextEditingController();
    _emailAddressCreateFocusNode4 = FocusNode();
    _textController9 = TextEditingController();
    _textFieldFocusNode5 = FocusNode();
  }

  @override
  void dispose() {
    _emailAddressCreateTextController1.dispose();
    _emailAddressCreateFocusNode1.dispose();
    _textController2.dispose();
    _textFieldFocusNode1.dispose();
    _textController3.dispose();
    _textFieldFocusNode2.dispose();
    _emailAddressCreateTextController2.dispose();
    _emailAddressCreateFocusNode2.dispose();
    _textController5.dispose();
    _textFieldFocusNode3.dispose();
    _emailAddressCreateTextController3.dispose();
    _emailAddressCreateFocusNode3.dispose();
    _textController7.dispose();
    _textFieldFocusNode4.dispose();
    _emailAddressCreateTextController4.dispose();
    _emailAddressCreateFocusNode4.dispose();
    _textController9.dispose();
    _textFieldFocusNode5.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1.34),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.imgur.com/RfmJeKJ.jpeg',
                    width: 414,
                    height: 265,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 170, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width >= 768.0
                              ? 530.0
                              : 630.0,
                          constraints: BoxConstraints(
                            maxWidth: 570,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0,
                                  2,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Theme.of(context).cardColor,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Column(
                              children: [
                                // TabBar 및 TabBarView 제거
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '제목/해시태그/설명',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 0, 24),
                                          child: Text(
                                            '제목',
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 16),
                                          child: Container(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller:
                                                  _emailAddressCreateTextController1,
                                              focusNode:
                                                  _emailAddressCreateFocusNode1,
                                              autofocus: true,
                                              autofillHints: [
                                                AutofillHints.email
                                              ],
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .dividerColor,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    Theme.of(context).cardColor,
                                                contentPadding:
                                                    EdgeInsets.all(24),
                                              ),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '#해시태그',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 8, 0),
                                                  child: Container(
                                                    width: 80,
                                                    child: TextFormField(
                                                      controller:
                                                          _textController2,
                                                      focusNode:
                                                          _textFieldFocusNode1,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelStyle:
                                                            Theme.of(context)
                                                                .textTheme
                                                                .bodyMedium,
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .dividerColor,
                                                            width: 2,
                                                          ),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            Theme.of(context)
                                                                .dividerColor,
                                                      ),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.add_circle_outline,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall
                                                    ?.color,
                                                size: 45,
                                              ),
                                              Container(
                                                width: 201,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .cardColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 16, 24),
                                            child: Text(
                                              '설명',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 16),
                                          child: TextFormField(
                                            controller: _textController3,
                                            focusNode: _textFieldFocusNode2,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge,
                                              filled: true,
                                              fillColor:
                                                  Theme.of(context).cardColor,
                                              contentPadding:
                                                  EdgeInsets.all(24),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 16),
                                            child: ElevatedButton(
                                              onPressed: () async {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Makeroom2Widget()));
                                              },
                                              child: Text(
                                                '다음', // 버튼 텍스트
                                                style: TextStyle(
                                                    color:
                                                        Colors.white), // 텍스트 색상
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 48,
                                                  vertical: 16,
                                                ),
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .primaryColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                ),
                                                elevation: 3,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
