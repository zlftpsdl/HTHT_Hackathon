import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';
import '../models/footballteam4_model.dart';
export '../models/footballteam1_model.dart';

class Footballteam4Widget extends StatefulWidget {
  const Footballteam4Widget({super.key});

  @override
  State<Footballteam4Widget> createState() => _Footballteam4WidgetState();
}

class _Footballteam4WidgetState extends State<Footballteam4Widget> {
  late Footballteam4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = Footballteam4Model();
    _model.initState(context);
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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 24,
                ),
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1434648957308-5e6a859697e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxM3x8Zm9vdGJhbGx8ZW58MHx8fHwxNzIyNzkyNjA1fDA&ixlib=rb-4.0.3&q=80&w=1080',
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '축구 할 사람 모여랏',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '이 준',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Color(0xFFFFCAC6),
                        ),
                  ),
                  Text(
                    '축구 ㄱ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontFamily: 'Roboto',
                        ),
                  ),
                  Divider(
                    height: 32,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Text(
                    '10:00am | Handong International School',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontFamily: 'Roboto',
                        ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '8 / 20',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Color(0xFFFF0000),
                          fontSize: 18,
                        ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 24),
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
                          backgroundColor: Colors.blue,
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
        ),
      ),
    );
  }
}
