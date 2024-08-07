import 'package:flutter/material.dart';
import 'footballteam1_widget.dart';
import 'footballteam2_widget.dart';
import 'footballteam3_widget.dart';
import 'footballteam4_widget.dart';
import '/models/football_model.dart';
import 'makeroom1_widget.dart';

class FootballWidget extends StatefulWidget {
  const FootballWidget({super.key});

  @override
  State<FootballWidget> createState() => _FootballWidgetState();
}

class _FootballWidgetState extends State<FootballWidget> {
  late FootballModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = FootballModel();

    _model.textFieldTextController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 7),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Color(0x9C427E51),
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
            child: Text(
              '축구',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Divider(
                        thickness: 2,
                        indent: 40,
                        endIndent: 40,
                        color: Color(0xCCAFAFAF),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 15, 16, 0),
                            child: Container(
                              width: 280,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 12, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.search_rounded,
                                      color: Theme.of(context).textTheme.bodyLarge?.color,
                                      size: 24,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                        child: Container(
                                          width: 200,
                                          child: TextFormField(
                                            controller: _model.textFieldTextController,
                                            focusNode: _model.textFieldFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search listings...',
                                              labelStyle: Theme.of(context).textTheme.bodyMedium,
                                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder: InputBorder.none,
                                              filled: true,
                                              fillColor: Theme.of(context).scaffoldBackgroundColor,
                                            ),
                                            style: Theme.of(context).textTheme.bodyLarge,
                                            cursorColor: Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.tune_rounded,
                                        //color: Theme.of(context).primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 20, 0, 0),
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Theme.of(context).textTheme.bodyLarge?.color,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Makeroom1Widget())
                          );
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                        child: Text(
                          'Team',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: ListView(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 10),
                              child: GestureDetector(
                                onTap: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Footballteam1Widget()),
                                );},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Theme.of(context).colorScheme.secondary,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1504305754058-2f08ccd89a0a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8c29jY2VyfGVufDB8fHx8MTcyMjgzMDk5OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(13, 20, 0, 0),
                                          child: Text(
                                            '2 / 18',
                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: const Color(0xFFE90D2C),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '나 이길 자신 있어?',
                                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                '#고수들만',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                '#초보X',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                '#경기도',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                '#EASY',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 10),
                              child: GestureDetector(
                                onTap: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Footballteam2Widget ()),
                                );},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Theme.of(context).colorScheme.secondary,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1526232761682-d26e03ac148e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxzb2NjZXJ8ZW58MHx8fHwxNzIyODMwOTk4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(1, 10, 0, 0),
                                                child: Text(
                                                  '2 / 18',
                                                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                    color: const Color(0xFFE90D2C),
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '중학생만! 고1까지는 봐줘용',
                                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                    child: Text(
                                                      '#중학생만 오세요!',
                                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                    child: Text(
                                                      '#그래도 고1도 가능',
                                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 10),
                              child: GestureDetector(
                                onTap: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Footballteam3Widget()),
                                );},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Theme.of(context).colorScheme.secondary,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1520363909542-9f69145ab443?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOHx8c29jY2VyfGVufDB8fHx8MTcyMjgzMDk5OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(13, 15, 0, 0),
                                          child: Text(
                                            '8 / 20',
                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: const Color(0xFFE90D2C),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '같이 다이어트 해요~',
                                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                '#아자아자',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                '#동기부여',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                  color: Theme.of(context).colorScheme.secondary,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 10),
                              child: GestureDetector(
                                onTap: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Footballteam4Widget()),
                                );},
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: Theme.of(context).colorScheme.secondary,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                          child: Image.network(
                                            'https://images.unsplash.com/photo-1434648957308-5e6a859697e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxM3x8c29jY2VyfGVufDB8fHx8MTcyMjgzMDk5OHww&ixlib=rb-4.0.3&q=80&w=1080',
                                            width: double.infinity,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(13, 15, 0, 0),
                                          child: Text(
                                            '8 / 20',
                                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                              color: const Color(0xFFE90D2C),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '축구쟁이들 모여랏',
                                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                    child: Text(
                                                      '#난 엄마 뱃속에서부터 축구했지',
                                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                                        color: Theme.of(context).colorScheme.secondary,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
