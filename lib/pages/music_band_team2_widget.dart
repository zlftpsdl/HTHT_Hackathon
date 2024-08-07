import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';

class MusicBandTeam2Widget extends StatefulWidget {
  const MusicBandTeam2Widget({super.key});

  @override
  State<MusicBandTeam2Widget> createState() => _MusicBandTeam2WidgetState();
}

class _MusicBandTeam2WidgetState extends State<MusicBandTeam2Widget> {
  @override
  void initState() {
    super.initState();
    // Initialize your model or any other setup here if needed
  }

  @override
  void dispose() {
    // Dispose of any resources or controllers if needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: Colors.white, // Replace with your desired color
      appBar: AppBar(
        backgroundColor: Colors.blue, // Replace with your desired color
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
          style: TextStyle(
            fontFamily:
                'Outfit', // Ensure this font is included in pubspec.yaml
            color: Colors.white,
            letterSpacing: 0,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
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
                    'https://images.unsplash.com/photo-1489641493513-ba4ee84ccea9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMnx8bXVzaWN8ZW58MHx8fHwxNzIyODAyNDYwfDA&ixlib=rb-4.0.3&q=80&w=1080',
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
                      '중딩만',
                      style: TextStyle(
                        fontFamily:
                            'Outfit', // Ensure this font is included in pubspec.yaml
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        '노현정',
                        style: TextStyle(
                          fontFamily:
                              'Readex Pro', // Ensure this font is included in pubspec.yaml
                          color: Color(0xFFFFCAC6),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '고수들만 들어오세요! 초보들은 나 절대 못이김!!ㅋㅋ',
                      style: TextStyle(
                        fontFamily:
                            'Readex Pro', // Ensure this font is included in pubspec.yaml
                        fontSize: 16,
                      ),
                    ),
                    Divider(
                      height: 32,
                      thickness: 1,
                      color: Colors.grey, // Replace with your desired color
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 15),
                      child: Text(
                        '10:00am | Handong International School',
                        style: TextStyle(
                          fontFamily:
                              'Readex Pro', // Ensure this font is included in pubspec.yaml
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      '2 / 18',
                      style: TextStyle(
                        fontFamily:
                            'Readex Pro', // Ensure this font is included in pubspec.yaml
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
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
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
                      minimumSize: Size(300, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      textStyle: TextStyle(
                        fontFamily:
                            'Outfit', // Ensure this font is included in pubspec.yaml
                        fontSize: 18,
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
