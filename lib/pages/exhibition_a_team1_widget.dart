import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';

import '../models/exhibition_a_team1_model.dart';
export '../models/exhibition_a_team1_model.dart';

class ExhibitionATeam1Widget extends StatefulWidget {
  const ExhibitionATeam1Widget({super.key});

  @override
  State<ExhibitionATeam1Widget> createState() => _ExhibitionATeam1WidgetState();
}

class _ExhibitionATeam1WidgetState extends State<ExhibitionATeam1Widget> {
  late ExhibitionATeam1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = ExhibitionATeam1Model();
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
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Team',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                  child: const Image(
                    image: AssetImage("images/exhibitionA_1.jpg"),
                    width: double.infinity,
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
                      'A전시회 감상평',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                      child: Text(
                        '이 준',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFFCAC6),
                        ),
                      ),
                    ),
                    Text(
                      '예술가들의 대화',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      height: 32,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 15),
                      child: Text(
                        '10:00am | Handong International School',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      '2 / 18',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFFFF0000),
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
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        '신청하기',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
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
