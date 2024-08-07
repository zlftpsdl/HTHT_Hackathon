import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';

export '../models/exhibition_c_team3_model.dart';

class ExhibitionCTeam3Widget extends StatefulWidget {
  const ExhibitionCTeam3Widget({super.key});

  @override
  State<ExhibitionCTeam3Widget> createState() => _ExhibitionCTeam3WidgetState();
}

class _ExhibitionCTeam3WidgetState extends State<ExhibitionCTeam3Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Team',
          style: TextStyle(
            fontFamily: 'Arial',
            color: Colors.white,
            letterSpacing: 0,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const Image(
                    image: AssetImage("images/exhibitionC_3.jpg"),
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '전시회 후기',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                      child: Text(
                        '이 준',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Color(0xFFFFCAC6),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '풀자',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 16,
                      ),
                    ),
                    Divider(
                      height: 32,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 15),
                      child: Text(
                        '10:00am | Handong International School',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      '8 / 20',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        color: Color(0xFFFF0000),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                  child: ElevatedButton(
                    onPressed: () {
                      print('ButtonPrimary pressed ...');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 3,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: const Text(
                        '신청하기',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          color: Colors.white,
                          fontSize: 20,
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
