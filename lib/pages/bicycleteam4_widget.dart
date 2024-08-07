import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';
import '../models/bicycleteam4_model.dart';
export '../models/bicycleteam4_model.dart';

class Bicycleteam4Widget extends StatefulWidget {
  const Bicycleteam4Widget({super.key});

  @override
  State<Bicycleteam4Widget> createState() => _Bicycleteam4WidgetState();
}

class _Bicycleteam4WidgetState extends State<Bicycleteam4Widget> {
  late Bicycleteam4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = Bicycleteam4Model();
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
        FocusScope.of(context).unfocus();
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
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1532298229144-0ec0c57515c7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxiaWtlfGVufDB8fHx8MTcyMjgzMDcyM3ww&ixlib=rb-4.0.3&q=80&w=1080',
                        width: MediaQuery.of(context).size.width,
                        height: 230,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '자전거 탈 사람 모여랏',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 8),
                          child: Text(
                            '이 준',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  color: Color(0xFFFFCAC6),
                                ),
                          ),
                        ),
                        Text(
                          '자전거 ㄱ',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontFamily: 'Roboto',
                                  ),
                        ),
                        Divider(
                          height: 32,
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8, bottom: 15),
                          child: Text(
                            '10:00am | Handong International School',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontFamily: 'Roboto',
                                ),
                          ),
                        ),
                        Text(
                          '8 / 18',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Color(0xFFFF0000),
                                    fontSize: 18,
                                  ),
                        ),
                      ],
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
                        child: TextButton(onPressed: () { Navigator.push( context, MaterialPageRoute(builder: (context) => HomePage()), ); },child: Text('신청하기')),
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
