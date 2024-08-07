import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';

class MusicMIDIteam1Widget extends StatefulWidget {
  const MusicMIDIteam1Widget({super.key});

  @override
  State<MusicMIDIteam1Widget> createState() => _MusicMIDIteam1WidgetState();
}

class _MusicMIDIteam1WidgetState extends State<MusicMIDIteam1Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: Colors.grey[200], // Replace with your color
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
            fontFamily: 'Outfit', // Ensure this font is added in pubspec.yaml
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
                    'https://images.unsplash.com/photo-1703117746916-8f3431dc06f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxNSURJfGVufDB8fHx8MTcyMjg0NDM4MXww&ixlib=rb-4.0.3&q=80&w=1080',
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
                      'MIDI고수가 필요해',
                      style: TextStyle(
                        fontFamily:
                            'Outfit', // Ensure this font is added in pubspec.yaml
                        fontWeight: FontWeight.w600,
                        fontSize: 24, // Adjust as needed
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                      child: Text(
                        '노현정',
                        style: TextStyle(
                          fontFamily:
                              'Readex Pro', // Ensure this font is added in pubspec.yaml
                          color: Color(0xFFFFCAC6),
                          fontSize: 18, // Adjust as needed
                        ),
                      ),
                    ),
                    Text(
                      '고수들만 들어오세요! 초보들은 나 절대 못버팀!!ㅋㅋ',
                      style: TextStyle(
                        fontFamily:
                            'Readex Pro', // Ensure this font is added in pubspec.yaml
                        fontSize: 16, // Adjust as needed
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
                              'Readex Pro', // Ensure this font is added in pubspec.yaml
                          fontSize: 16, // Adjust as needed
                        ),
                      ),
                    ),
                    Text(
                      '2 / 18',
                      style: TextStyle(
                        fontFamily:
                            'Readex Pro', // Ensure this font is added in pubspec.yaml
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
                            'Outfit', // Ensure this font is added in pubspec.yaml
                        fontSize: 18, // Adjust as needed
                      ),
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
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
    );
  }
}
