import 'package:flutter/material.dart';
import './makeroom3_widget.dart';
import '/models/makeroom2_model.dart';

class Makeroom2Widget extends StatefulWidget {
  const Makeroom2Widget({super.key});

  @override
  State<Makeroom2Widget> createState() => _Makeroom2WidgetState();
}

class _Makeroom2WidgetState extends State<Makeroom2Widget>
    with TickerProviderStateMixin {
  late Makeroom2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = Makeroom2Model();
    // TabController를 사용할 필요가 없으므로 제거합니다.
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Widget _buildCountController({
    required int count,
    required Function(int) updateCount,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            if (count > 0) updateCount(count - 1);
          },
        ),
        Text(
          '$count',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            updateCount(count + 1);
          },
        ),
      ],
    );
  }

  Widget _buildDropDown({
    required String? value,
    required List<String> options,
    required Function(String?) onChanged,
  }) {
    return DropdownButton<String>(
      value: value,
      hint: Text('Please select...'),
      icon: Icon(Icons.keyboard_arrow_down_rounded),
      isExpanded: true,
      items: options.map<DropdownMenuItem<String>>((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option),
        );
      }).toList(),
      onChanged: onChanged,
    );
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -1.34),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://i.imgur.com/RfmJeKJ.jpeg',
                    width: 433,
                    height: 265,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 170, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width >= 768.0
                              ? 530.0
                              : 630.0,
                          constraints: BoxConstraints(
                            maxWidth: 570,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Theme.of(context).cardColor,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Column(
                              children: [
                                // TabBar 제거
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 16, 24, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '2/3. 그룹 정원/ 분야 정하기',
                                          textAlign: TextAlign.start,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  90, 40, 0, 40),
                                          child: Container(
                                            width: 160,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .scaffoldBackgroundColor,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: Theme.of(context)
                                                    .dividerColor,
                                                width: 2,
                                              ),
                                            ),
                                            child: _buildCountController(
                                              count:
                                                  _model.countControllerValue1,
                                              updateCount: (count) => setState(
                                                  () => _model
                                                          .countControllerValue1 =
                                                      count),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 50),
                                          child: _buildDropDown(
                                            value: _model.dropDownValue1,
                                            options: [
                                              '자전거',
                                              '축구',
                                              '농구',
                                              '미디',
                                              '밴드'
                                            ],
                                            onChanged: (val) => setState(() =>
                                                _model.dropDownValue1 = val),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 16),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('이전'),
                                                style: ElevatedButton.styleFrom(
                                                  foregroundColor: Colors.white,
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40),
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 24,
                                                      vertical: 12),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 78,
                                              height: 52,
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(1, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 16),
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Makeroom3Widget()));
                                                  },
                                                  child: Text('다음'),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 24,
                                                            vertical: 12),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
