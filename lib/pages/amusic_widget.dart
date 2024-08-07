import 'package:flutter/material.dart';
import 'music_band_widget.dart';
import 'music_m_i_d_i_widget.dart';
import '../models/amusic_model.dart';
export '../models/amusic_model.dart';

class AmusicWidget extends StatefulWidget {
  const AmusicWidget({super.key});

  @override
  State<AmusicWidget> createState() => _AmusicWidgetState();
}

class _AmusicWidgetState extends State<AmusicWidget> {
  late AmusicModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = AmusicModel();
    _model.initState(context);
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
      backgroundColor: Colors.grey[200], // Default background color
      appBar: AppBar(
        backgroundColor: Colors.blue, // Default app bar color
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
          '음악',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontFamily: 'Roboto', // Default font
                color: Colors.white,
                fontSize: 24,
              ),
        ),
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const Image(
                image: AssetImage("images/music_main.jpg"),
                width: double.infinity,
                height: 214,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 60, 8, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 1),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MusicBandWidget()),
                          );
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[200], // Default container color
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0,
                                color: Colors.grey, // Default shadow color
                                offset: Offset(0.0, 1),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: const Image(
                                    image: AssetImage("images/music_band.jpg"),
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      '밴드',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                            fontFamily:
                                                'Roboto', // Default font
                                          ),
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.blue, // Default card color
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                      child: GestureDetector(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MusicMIDIWidget()),
                            );
                          },
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color:
                                  Colors.grey[200], // Default container color
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0,
                                  color: Colors.grey, // Default shadow color
                                  offset: Offset(0.0, 1),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: const Image(
                                      image:
                                          AssetImage("images/music_midi.jpg"),
                                      width: 60,
                                      height: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 0),
                                      child: Text(
                                        '미디(MIDI)',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontFamily:
                                                  'Roboto', // Default font
                                            ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    color: Colors.blue, // Default card color
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(4),
                                      child: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
