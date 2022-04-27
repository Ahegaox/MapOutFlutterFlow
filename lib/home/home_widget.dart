import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../log_in/log_in_widget.dart';
import '../mapa/mapa_widget.dart';
import '../registro/registro_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Image.asset(
                'assets/images/LOGO_MAPOUT.jpg',
                width: 160,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 20),
                child: Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final user = await signInWithGoogle(context);
                            if (user == null) {
                              return;
                            }
                            if (currentUserEmailVerified) {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MapaWidget(),
                                ),
                              );
                            } else {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MapaWidget(),
                                ),
                              );
                            }
                          },
                          text: 'CONTINUAR CON GOOGLE',
                          icon: Icon(
                            Icons.add,
                            color: Colors.transparent,
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            width: 300,
                            height: 50,
                            color: Color(0xFFEDEDED),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.85, -0.3),
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final user = await signInWithFacebook(context);
                            if (user == null) {
                              return;
                            }
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapaWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          text: 'CONTINUAR CON FACEBOOK',
                          icon: Icon(
                            Icons.add,
                            color: Colors.transparent,
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            width: 300,
                            height: 50,
                            color: Color(0xFF1877F2),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.89, 0),
                        child: Container(
                          width: 35,
                          height: 35,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://laetiqueta.com/wp-content/uploads/2018/10/facebook-icon-png-white-3.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 30),
                child: Container(
                  width: 300,
                  height: 50,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogInWidget(),
                              ),
                            );
                          },
                          text: 'CONTINUAR CON CORREO',
                          icon: Icon(
                            Icons.add,
                            color: Colors.transparent,
                            size: 20,
                          ),
                          options: FFButtonOptions(
                            width: 300,
                            height: 50,
                            color: Color(0xFFEDEDED),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0,
                            ),
                            borderRadius: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.85, 0.1),
                        child: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: Text(
                '- o -',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Nunito',
                      fontSize: 15,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: 300,
                height: 50,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistroWidget(),
                            ),
                          );
                        },
                        text: 'REGISTRARSE CON CORREO',
                        icon: Icon(
                          Icons.add,
                          color: Colors.transparent,
                          size: 20,
                        ),
                        options: FFButtonOptions(
                          width: 300,
                          height: 50,
                          color: Color(0xFFEDEDED),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                          borderRadius: 30,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.85, 0.1),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.85, 0.1),
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 35,
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
