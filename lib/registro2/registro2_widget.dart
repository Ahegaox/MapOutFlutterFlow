import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../mapa/mapa_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registro2Widget extends StatefulWidget {
  const Registro2Widget({Key key}) : super(key: key);

  @override
  _Registro2WidgetState createState() => _Registro2WidgetState();
}

class _Registro2WidgetState extends State<Registro2Widget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool switchListTileValue1;
  bool switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFFEB7C25)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/LOGO_MAPOUT.jpg',
              width: 160,
              height: 160,
              fit: BoxFit.cover,
            ),
            Text(
              'Antes de empezar, te haremos algunas preguntas, para poder mostrarte actividades!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Nunito',
                    color: Color(0xFF999999),
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                ),
                child: TextFormField(
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Fecha de nacimiento',
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
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                  ),
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Nunito',
                        color: Color(0xFF999999),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.datetime,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                ),
                child: TextFormField(
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Ciudad en la que resides',
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
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                ),
                child: TextFormField(
                  controller: textController3,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Pais en el que resides',
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
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
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
            SwitchListTile(
              value: switchListTileValue1 ??= false,
              onChanged: (newValue) =>
                  setState(() => switchListTileValue1 = newValue),
              subtitle: Text(
                'Te consideras LGBTQIA+ Friendly?',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).subtitle2,
              ),
              tileColor: Colors.white,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            ),
            SwitchListTile(
              value: switchListTileValue2 ??= false,
              onChanged: (newValue) =>
                  setState(() => switchListTileValue2 = newValue),
              subtitle: Text(
                'Te consideras tímido? Introvertido? O con algun tipo de ansiedad social?',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).subtitle2,
              ),
              tileColor: Colors.white,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapaWidget(),
                    ),
                  );
                },
                text: 'ENTRAR',
                options: FFButtonOptions(
                  width: 300,
                  height: 50,
                  color: Color(0xFFEB7C25),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
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
    );
  }
}
