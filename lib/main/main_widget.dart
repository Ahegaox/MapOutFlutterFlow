import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(35, 30, 0, 20),
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFEDEDED),
              borderRadius: BorderRadius.circular(30),
              shape: BoxShape.rectangle,
            ),
            alignment: AlignmentDirectional(0, 0),
            child: TextFormField(
              controller: textController,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Buscar...',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                contentPadding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
              ),
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: 'Nunito',
                    color: Color(0xFF999999),
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ),
    );
  }
}
