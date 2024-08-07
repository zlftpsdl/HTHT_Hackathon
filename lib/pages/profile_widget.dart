import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/mainpage_widget.dart';
import 'package:flutter_chat_demo/pages/notification_widget.dart';
import 'package:flutter_chat_demo/pages/pages.dart';
import 'login_page.dart';
import '/models/profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with TickerProviderStateMixin {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = ProfileModel();

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));

    _model.textController1 ??= TextEditingController(text: '#멋쟁이');
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textController2 ??= TextEditingController(text: '안녕하세요 홍길동그리동동 입니다');
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.emailAddressCreateTextController1 ??= TextEditingController();
    _model.emailAddressCreateFocusNode1 ??= FocusNode();
    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();
    _model.emailAddressCreateTextController2 ??= TextEditingController();
    _model.emailAddressCreateFocusNode2 ??= FocusNode();
    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();
    _model.emailAddressCreateTextController3 ??= TextEditingController();
    _model.emailAddressCreateFocusNode3 ??= FocusNode();
    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.textFieldFocusNode1!.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.textFieldFocusNode1)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xD16AA19A),
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1.34),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.imgur.com/tXEX1Hm.jpeg',
                    width: 433,
                    height: 293,
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
                          height: MediaQuery.sizeOf(context).width >= 768.0
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
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Theme.of(context).dividerColor,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: TabBar(
                                      isScrollable: true,
                                      labelColor: Color(0xB2FF5963),
                                      unselectedLabelColor: Color(0xB3FF5963),
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 16, 0),
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                      unselectedLabelStyle: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                      indicatorColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      indicatorWeight: 3,
                                      tabs: [
                                        Tab(text: '로그인'),
                                        Tab(text: '메인'),
                                        Tab(text: '프로필'),
                                        Tab(text: '알림'),
                                      ],
                                      controller: _model.tabBarController,
                                      onTap: (index) {
                                        switch (index) {
                                          case 0:
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()),
                                            );
                                            break;
                                          case 1:
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MainpageWidget()),
                                            );
                                            break;
                                          case 2:
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProfileWidget()),
                                            );
                                            break;
                                          case 3:
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NotificationWidget()),
                                            );
                                            break;
                                        }
                                      }),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, -1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24, 16, 24, 0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(2),
                                                      child: Container(
                                                        width: 90,
                                                        height: 90,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0, -5),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          20,
                                                                          0,
                                                                          10),
                                                                  child: Text(
                                                                    '홍길동',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .headlineMedium,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                'abc1234@abc.com',
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(
                                                  height: 32,
                                                  thickness: 1,
                                                  color: Theme.of(context)
                                                      .dividerColor,
                                                ),
                                                Text(
                                                  '나를 표현하는#',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 15, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, -1),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        8,
                                                                        0),
                                                            child: Container(
                                                              width: 80,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textController1,
                                                                focusNode: _model
                                                                    .textFieldFocusNode1,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelStyle: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .labelMedium,
                                                                  hintStyle: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .labelMedium,
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .dividerColor,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24),
                                                                  ),
                                                                  errorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .error,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .error,
                                                                      width: 2,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            24),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: Theme.of(
                                                                          context)
                                                                      .cardColor,
                                                                ),
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .titleMedium,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                validator:
                                                                    (value) {
                                                                  if (value ==
                                                                          null ||
                                                                      value
                                                                          .isEmpty) {
                                                                    return '필수 입력 항목입니다.';
                                                                  }
                                                                  return null;
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .add_circle_outline,
                                                        color: Theme.of(context)
                                                            .secondaryHeaderColor,
                                                        size: 45,
                                                      ),
                                                      Container(
                                                        width: 201,
                                                        height: 25,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Theme.of(context)
                                                                  .cardColor,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  height: 32,
                                                  thickness: 1,
                                                  color: Theme.of(context)
                                                      .dividerColor,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 16, 10),
                                                    child: Text(
                                                      '설명',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelMedium,
                                                    ),
                                                  ),
                                                ),
                                                TextFormField(
                                                  controller:
                                                      _model.textController2,
                                                  focusNode: _model
                                                      .textFieldFocusNode2,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle:
                                                        Theme.of(context)
                                                            .textTheme
                                                            .labelLarge,
                                                    hintStyle: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Theme.of(context)
                                                            .dividerColor,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .error,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .error,
                                                        width: 2,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    filled: true,
                                                    fillColor: Theme.of(context)
                                                        .cardColor,
                                                    contentPadding:
                                                        EdgeInsets.all(24),
                                                  ),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return '필수 입력 항목입니다.';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                Divider(
                                                  height: 32,
                                                  thickness: 1,
                                                  color: Theme.of(context)
                                                      .dividerColor,
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        print(
                                                            'Button pressed ...');
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Theme.of(context)
                                                                .primaryColor,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 24),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        elevation: 3,
                                                      ),
                                                      child: Text(
                                                        '프로필 수정하기',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleSmall
                                                            ?.copyWith(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(105, 20, 0, 0),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Color(0xFFFAC0BC),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 24),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24),
                                                      ),
                                                      elevation: 3,
                                                    ),
                                                    child: Text(
                                                      '내가 속한 모임',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall
                                                          ?.copyWith(
                                                            color: Colors.white,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ].addToEnd(SizedBox(height: 100)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // 나머지 TabBarView 자식 요소는 여기에 추가할 수 있습니다.
                                    ],
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
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context); // 뒤로 가기 기능
                        },
                      ),
                      Expanded(
                        child: Text(
                          '프로필',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w600,
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
    );
  }
}
