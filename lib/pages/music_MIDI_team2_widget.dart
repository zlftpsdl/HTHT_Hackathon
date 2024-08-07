import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';

class MusicMIDITeam2Widget extends StatefulWidget {
  const MusicMIDITeam2Widget({super.key});

  @override
  State<MusicMIDITeam2Widget> createState() => _MusicMIDITeam2WidgetState();
}

class _MusicMIDITeam2WidgetState extends State<MusicMIDITeam2Widget> {
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
      backgroundColor: Colors.grey[200], // Example color
      appBar: AppBar(
        backgroundColor: Colors.blue, // Example color
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Team',
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 0,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1517273006195-51fa3364bce2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxNSURJfGVufDB8fHx8MTcyMjg0NDM4MXww&ixlib=rb-4.0.3&q=80&w=1080',
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '중딩만',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '노현정',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Color(0xFFFFCAC6),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '중딩만 들어오셈.',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                ),
              ),
              Divider(
                height: 32,
                thickness: 1,
                color: Colors.grey[400],
              ),
              SizedBox(height: 8),
              Text(
                '10:00am | Handong International School',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 15),
              Text(
                '2 / 18',
                style: TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Color(0xFFFF0000),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Example color
                    padding: EdgeInsets.symmetric(vertical: 16),
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
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 20,
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
