import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../log_in/log_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorLogInWidget extends StatefulWidget {
  const ErrorLogInWidget({Key key}) : super(key: key);

  @override
  _ErrorLogInWidgetState createState() => _ErrorLogInWidgetState();
}

class _ErrorLogInWidgetState extends State<ErrorLogInWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                child: Image.asset(
                  'assets/images/LOGO_MAPOUT.jpg',
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: Icon(
                  Icons.privacy_tip_outlined,
                  color: Color(0xFF999999),
                  size: 50,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(65, 20, 65, 0),
                  child: Text(
                    'Hemos buscado en nuestra cartografía vuestra cuenta pero no hemos encontrado resultados!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Nunito',
                          color: Color(0xFF999999),
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInWidget(),
                      ),
                    );
                  },
                  text: 'VOLVER A INTENTAR',
                  options: FFButtonOptions(
                    width: 250,
                    height: 40,
                    color: Color(0xFF50C3CB),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 30,
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
