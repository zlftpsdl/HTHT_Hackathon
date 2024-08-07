import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/pages/pages.dart';
import '../models/bicycleteam3_model.dart';
export '../models/bicycleteam3_model.dart';

class BicycleTeam3Widget extends StatefulWidget {
  const BicycleTeam3Widget({super.key});

  @override
  State<BicycleTeam3Widget> createState() => _BicycleTeam3WidgetState();
}

class _BicycleTeam3WidgetState extends State<BicycleTeam3Widget> {
  late BicycleTeam3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = BicycleTeam3Model();
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
            'Team',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontFamily: 'Roboto', // Default font
                  color: Colors.white,
                  fontSize: 24,
                ),
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            // Remove the inner SingleChildScrollView
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    // Removed the inner SingleChildScrollView
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1534146789009-76ed5060ec70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8YmlrZXxlbnwwfHx8fDE3MjI4MzA3MjN8MA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: MediaQuery.of(context).size.width,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '같이 다이어트 해요~',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontFamily: 'Roboto', // Default font
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
                              '10kg빼기가 목표!!',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontFamily: 'Roboto', // Default font
                                  ),
                            ),
                            Divider(
                              height: 32,
                              thickness: 1,
                              color: Colors.grey, // Default divider color
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 15),
                              child: Text(
                                '10:00am | Handong International School',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontFamily: 'Roboto', // Default font
                                    ),
                              ),
                            ),
                            Text(
                              '10 / 18',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
