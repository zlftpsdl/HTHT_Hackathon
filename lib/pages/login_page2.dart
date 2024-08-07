// import 'package:flutter/material.dart';
// import 'package:flutter_chat_demo/constants/app_constants.dart';
// import 'package:flutter_chat_demo/constants/color_constants.dart';
// import 'package:flutter_chat_demo/pages/pages.dart';
// import 'package:flutter_chat_demo/providers/auth_provider.dart';
// import 'package:flutter_chat_demo/widgets/widgets.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';
// import '/models/login_model.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   LoginPageState createState() => LoginPageState();
// }

// class LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
//   late LoginModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   void initState() {
//     super.initState();
//     _model = LoginModel();

//     _model.tabBarController = TabController(
//       vsync: this,
//       length: 2,
//       initialIndex: 0,
//     )..addListener(() => setState(() {}));
//     _model.emailAddressTextController ??= TextEditingController();
//     _model.emailAddressFocusNode ??= FocusNode();
//     _model.passwordTextController ??= TextEditingController();
//     _model.passwordFocusNode ??= FocusNode();
//     _model.emailAddressCreateTextController ??= TextEditingController();
//     _model.emailAddressCreateFocusNode ??= FocusNode();
//     _model.passwordCreateTextController ??= TextEditingController();
//     _model.passwordCreateFocusNode ??= FocusNode();
//     _model.passwordConfirmTextController ??= TextEditingController();
//     _model.passwordConfirmFocusNode ??= FocusNode();
//   }

//   @override
//   void dispose() {
//     _model.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     switch (authProvider.status) {
//       case Status.authenticateError:
//         Fluttertoast.showToast(msg: "Sign in fail");
//         break;
//       case Status.authenticateCanceled:
//         Fluttertoast.showToast(msg: "Sign in canceled");
//         break;
//       case Status.authenticated:
//         Fluttertoast.showToast(msg: "Sign in success");
//         break;
//       default:
//         break;
//     }
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Theme.of(context).colorScheme.background,
//         body: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Expanded(
//               flex: 6,
//               child: Container(
//                 width: 100,
//                 height: double.infinity,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       const Color(0xFFADCC99),
//                       Theme.of(context).colorScheme.tertiary,
//                     ],
//                     stops: const [0, 1],
//                     begin: const AlignmentDirectional(0.87, -1),
//                     end: const AlignmentDirectional(-0.87, 1),
//                   ),
//                 ),
//                 alignment: const AlignmentDirectional(0, -1),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       SingleChildScrollView(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(
//                                   0, 70, 0, 32),
//                               child: Container(
//                                 width: 200,
//                                 height: 70,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(16),
//                                 ),
//                                 alignment: const AlignmentDirectional(0, 0),
//                                 child: Align(
//                                   alignment: const AlignmentDirectional(0, 0),
//                                   child: Text(
//                                     'welcome, MATE!',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .displaySmall
//                                         ?.copyWith(
//                                           color: Colors.white,
//                                           fontSize: 26,
//                                           fontStyle: FontStyle.italic,
//                                         ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: double.infinity,
//                         height: 700,
//                         constraints: const BoxConstraints(
//                           maxWidth: 602,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Theme.of(context).scaffoldBackgroundColor,
//                           boxShadow: const [
//                             BoxShadow(
//                               blurRadius: 4,
//                               color: Color(0x33000000),
//                               offset: Offset(0, 2),
//                               spreadRadius: 7,
//                             )
//                           ],
//                           borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(0),
//                             bottomRight: Radius.circular(0),
//                             topLeft: Radius.circular(30),
//                             topRight: Radius.circular(30),
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsetsDirectional.fromSTEB(
//                               16, 30, 16, 0),
//                           child: Column(
//                             children: [
//                               Align(
//                                 alignment: const Alignment(-1, 0),
//                                 child: TabBar(
//                                   labelColor: Theme.of(context)
//                                       .textTheme
//                                       .bodyLarge
//                                       ?.color,
//                                   unselectedLabelColor: Theme.of(context)
//                                       .textTheme
//                                       .bodyMedium
//                                       ?.color,
//                                   labelPadding:
//                                       const EdgeInsets.fromLTRB(0, 0, 0, 10),
//                                   labelStyle:
//                                       Theme.of(context).textTheme.headlineSmall,
//                                   indicatorColor:
//                                       Theme.of(context).colorScheme.primary,
//                                   tabs: const [
//                                     Tab(
//                                       text: 'Sign In',
//                                     ),
//                                     Tab(
//                                       text: 'Sign Up',
//                                     ),
//                                   ],
//                                   controller: _model.tabBarController,
//                                   onTap: (i) async {
//                                     [() async {}, () async {}][i]();
//                                   },
//                                 ),
//                               ),
//                               Expanded(
//                                 child: TabBarView(
//                                   controller: _model.tabBarController,
//                                   children: [
//                                     Align(
//                                       alignment:
//                                           const AlignmentDirectional(0, 0),
//                                       child: Padding(
//                                         padding: const EdgeInsetsDirectional
//                                             .fromSTEB(12, 0, 12, 12),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Padding(
//                                               padding:
//                                                   const EdgeInsetsDirectional
//                                                       .fromSTEB(0, 10, 0, 0),
//                                               child: Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Align(
//                                                     alignment:
//                                                         const AlignmentDirectional(
//                                                             0, 0),
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                               16, 0, 16, 24),
//                                                       child: Text(
//                                                         '다른 방법으로 로그인하기',
//                                                         textAlign:
//                                                             TextAlign.center,
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .labelMedium,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Align(
//                                                     alignment:
//                                                         const AlignmentDirectional(
//                                                             0, 0),
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                               0, 0, 0, 16),
//                                                       child: Wrap(
//                                                         spacing: 16,
//                                                         runSpacing: 0,
//                                                         alignment: WrapAlignment
//                                                             .center,
//                                                         crossAxisAlignment:
//                                                             WrapCrossAlignment
//                                                                 .center,
//                                                         direction:
//                                                             Axis.horizontal,
//                                                         runAlignment:
//                                                             WrapAlignment
//                                                                 .center,
//                                                         verticalDirection:
//                                                             VerticalDirection
//                                                                 .down,
//                                                         clipBehavior: Clip.none,
//                                                         children: [
//                                                           Padding(
//                                                             padding:
//                                                                 const EdgeInsetsDirectional
//                                                                     .fromSTEB(0,
//                                                                     0, 0, 16),
//                                                             child:
//                                                                 ElevatedButton
//                                                                     .icon(
//                                                               onPressed:
//                                                                   () async {
//                                                                 // Google sign-in logic here
//                                                               },
//                                                               icon: const Icon(
//                                                                 Icons.login,
//                                                                 size: 20,
//                                                               ),
//                                                               style:
//                                                                   ElevatedButton
//                                                                       .styleFrom(
//                                                                 padding: const EdgeInsets
//                                                                     .symmetric(
//                                                                     horizontal:
//                                                                         16,
//                                                                     vertical:
//                                                                         12),
//                                                                 backgroundColor:
//                                                                     Theme.of(
//                                                                             context)
//                                                                         .colorScheme
//                                                                         .surface,
//                                                                 shape:
//                                                                     RoundedRectangleBorder(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               40),
//                                                                   side:
//                                                                       BorderSide(
//                                                                     color: Theme.of(
//                                                                             context)
//                                                                         .colorScheme
//                                                                         .secondary,
//                                                                     width: 2,
//                                                                   ),
//                                                                 ),
//                                                                 elevation: 0,
//                                                               ),
//                                                               label: Text(
//                                                                 'Continue with Google',
//                                                                 style: Theme.of(
//                                                                         context)
//                                                                     .textTheme
//                                                                     .bodyMedium
//                                                                     ?.copyWith(
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .bold,
//                                                                     ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment:
//                                           const AlignmentDirectional(0, 0),
//                                       child: Padding(
//                                         padding: const EdgeInsetsDirectional
//                                             .fromSTEB(12, 0, 12, 12),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             SizedBox(
//                                               height: 30,
//                                             ),
//                                             Divider(
//                                               thickness: 1,
//                                               color: Theme.of(context)
//                                                   .dividerColor,
//                                             ),
//                                             Padding(
//                                               padding:
//                                                   const EdgeInsetsDirectional
//                                                       .fromSTEB(0, 20, 0, 30),
//                                               child: Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Align(
//                                                     alignment:
//                                                         const AlignmentDirectional(
//                                                             0, 0),
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                               16, 0, 16, 24),
//                                                       child: Text(
//                                                         '다른 방법으로 회원가입하기',
//                                                         textAlign:
//                                                             TextAlign.center,
//                                                         style: Theme.of(context)
//                                                             .textTheme
//                                                             .labelMedium,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Align(
//                                                     alignment:
//                                                         const AlignmentDirectional(
//                                                             0, 0),
//                                                     child: Padding(
//                                                       padding:
//                                                           const EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                               0, 0, 0, 16),
//                                                       child: Wrap(
//                                                         spacing: 16,
//                                                         runSpacing: 0,
//                                                         alignment: WrapAlignment
//                                                             .center,
//                                                         crossAxisAlignment:
//                                                             WrapCrossAlignment
//                                                                 .center,
//                                                         direction:
//                                                             Axis.horizontal,
//                                                         runAlignment:
//                                                             WrapAlignment
//                                                                 .center,
//                                                         verticalDirection:
//                                                             VerticalDirection
//                                                                 .down,
//                                                         clipBehavior: Clip.none,
//                                                         children: [
//                                                           Padding(
//                                                             padding:
//                                                                 const EdgeInsetsDirectional
//                                                                     .fromSTEB(0,
//                                                                     0, 0, 16),
//                                                             child:
//                                                                 ElevatedButton
//                                                                     .icon(
//                                                               onPressed:
//                                                                   () async {
//                                                                 authProvider
//                                                                     .handleSignIn()
//                                                                     .then(
//                                                                         (isSuccess) {
//                                                                   if (isSuccess) {
//                                                                     Navigator
//                                                                         .pushReplacement(
//                                                                       context,
//                                                                       MaterialPageRoute(
//                                                                         builder:
//                                                                             (context) =>
//                                                                                 HomePage(),
//                                                                       ),
//                                                                     );
//                                                                   }
//                                                                 }).catchError(
//                                                                         (error,
//                                                                             stackTrace) {
//                                                                   Fluttertoast.showToast(
//                                                                       msg: error
//                                                                           .toString());
//                                                                   authProvider
//                                                                       .handleException();
//                                                                 });
//                                                               },
//                                                               icon: const Icon(
//                                                                 Icons.login,
//                                                                 size: 20,
//                                                               ),
//                                                               style:
//                                                                   ElevatedButton
//                                                                       .styleFrom(
//                                                                 padding: const EdgeInsets
//                                                                     .symmetric(
//                                                                     horizontal:
//                                                                         16,
//                                                                     vertical:
//                                                                         12),
//                                                                 backgroundColor:
//                                                                     Theme.of(
//                                                                             context)
//                                                                         .colorScheme
//                                                                         .surface,
//                                                                 shape:
//                                                                     RoundedRectangleBorder(
//                                                                   borderRadius:
//                                                                       BorderRadius
//                                                                           .circular(
//                                                                               40),
//                                                                   side:
//                                                                       BorderSide(
//                                                                     color: Theme.of(
//                                                                             context)
//                                                                         .colorScheme
//                                                                         .secondary,
//                                                                     width: 2,
//                                                                   ),
//                                                                 ),
//                                                                 elevation: 0,
//                                                               ),
//                                                               label: Text(
//                                                                 'Continue with Google',
//                                                                 style: Theme.of(
//                                                                         context)
//                                                                     .textTheme
//                                                                     .bodyMedium
//                                                                     ?.copyWith(
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .bold,
//                                                                     ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
