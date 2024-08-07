import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';
import '../models/baseballteam4_model.dart';

class BaseballTeam4Widget extends StatefulWidget {
  const BaseballTeam4Widget({super.key});

  @override
  State<BaseballTeam4Widget> createState() => _BaseballTeam4WidgetState();
}

class _BaseballTeam4WidgetState extends State<BaseballTeam4Widget> {
  late BaseballTeam4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = BaseballTeam4Model();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_model.unfocusNode.canRequestFocus) {
          FocusScope.of(context).requestFocus(_model.unfocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Theme.of(context).scaffoldBackgroundColor,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Team',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Roboto', // Default font
                  color: Theme.of(context).scaffoldBackgroundColor,
                  fontSize: 24,
                  letterSpacing: 0,
                ),
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1471295253337-3ceaaedca402?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8YmFzZWJhbGx8ZW58MHx8fHwxNzIyODMxMTA0fDA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '야구쟁이들 모여랏',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontFamily: 'Roboto', // Default font
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                              child: Text(
                                '이 준',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontFamily: 'Roboto', // Default font
                                      color: Color(0xFFFFCAC6),
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                            Text(
                              '야구 ㄱ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontFamily: 'Roboto', // Default font
                                    letterSpacing: 0,
                                  ),
                            ),
                            Divider(
                              height: 32,
                              thickness: 1,
                              color: Theme.of(context).dividerColor,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 15),
                              child: Text(
                                '10:00am | Handong International School',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Roboto', // Default font
                                      letterSpacing: 0,
                                    ),
                              ),
                            ),
                            Text(
                              '8 / 20',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontFamily: 'Roboto', // Default font
                                    color: Color(0xFFFF0000),
                                    fontSize: 18,
                                    letterSpacing: 0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                          child: ElevatedButton(
                            onPressed: () {
                              print('ButtonPrimary pressed ...');
                            },
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                },
                                child: Text('신청하기')),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue, // Button text color
                              padding: EdgeInsets.zero,
                              minimumSize: Size(300, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
