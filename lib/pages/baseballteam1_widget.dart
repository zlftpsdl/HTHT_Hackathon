import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';
import '/models/baseballteam1_model.dart';

class Baseballteam1Widget extends StatefulWidget {
  const Baseballteam1Widget({super.key});

  @override
  State<Baseballteam1Widget> createState() => _Baseballteam1WidgetState();
}

class _Baseballteam1WidgetState extends State<Baseballteam1Widget> {
  late Baseballteam1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = Baseballteam1Model();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
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
                letterSpacing: 0,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1524626795941-2c5338f1666f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8YmFzZWJhbGx8ZW58MHx8fHwxNzIyODMxMTA0fDA&ixlib=rb-4.0.3&q=80&w=1080',
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
                      '나 이길 자신 있어?',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontFamily: 'Roboto', // Default font
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                      child: Text(
                        '이 준',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontFamily: 'Roboto', // Default font
                                  color: Color(0xFFFFCAC6),
                                  letterSpacing: 0,
                                ),
                      ),
                    ),
                    Text(
                      '고수들만 들어오세요! 초보들은 나 절대 못이김!!ㅋㅋ',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 15),
                      child: Text(
                        '10:00am | Handong International School',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: 'Roboto', // Default font
                              letterSpacing: 0,
                            ),
                      ),
                    ),
                    Text(
                      '2 / 18',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                            MaterialPageRoute(builder: (context) => HomePage()),
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
      ),
    );
  }
}
