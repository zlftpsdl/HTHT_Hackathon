import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';

class MusicBandTeam3Widget extends StatefulWidget {
  const MusicBandTeam3Widget({super.key});

  @override
  State<MusicBandTeam3Widget> createState() => _MusicBandTeam3WidgetState();
}

class _MusicBandTeam3WidgetState extends State<MusicBandTeam3Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: Colors.white, // Replace with your color
      appBar: AppBar(
        backgroundColor: Colors.blue, // Replace with your color
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
            fontFamily:
                'Outfit', // Use the font family you have in your pubspec.yaml
            color: Colors.white,
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
                    'https://images.unsplash.com/photo-1511379938547-c1f69419868d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8bXVzaWN8ZW58MHx8fHwxNzIyODAyNDYwfDA&ixlib=rb-4.0.3&q=80&w=1080',
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
                      '음악쟁이들 모여랏',
                      style: TextStyle(
                        fontFamily:
                            'Outfit', // Use the font family you have in your pubspec.yaml
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                      child: Text(
                        '노현정',
                        style: TextStyle(
                          fontFamily:
                              'Readex Pro', // Use the font family you have in your pubspec.yaml
                          color: Color(0xFFFFCAC6),
                        ),
                      ),
                    ),
                    Text(
                      '음악하는사람 ㄱ',
                      style: TextStyle(
                        fontFamily:
                            'Readex Pro', // Use the font family you have in your pubspec.yaml
                      ),
                    ),
                    Divider(
                      height: 32,
                      thickness: 1,
                      color: Colors.grey, // Replace with your color
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 15),
                      child: Text(
                        '10:00am | Handong International School',
                        style: TextStyle(
                          fontFamily:
                              'Readex Pro', // Use the font family you have in your pubspec.yaml
                        ),
                      ),
                    ),
                    Text(
                      '8 / 20',
                      style: TextStyle(
                        fontFamily:
                            'Readex Pro', // Use the font family you have in your pubspec.yaml
                        color: Color(0xFFFF0000),
                        fontSize: 18,
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
                      backgroundColor: Colors.blue,
                      textStyle: TextStyle(
                        fontFamily:
                            'Outfit', // Use the font family you have in your pubspec.yaml
                      ),
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
