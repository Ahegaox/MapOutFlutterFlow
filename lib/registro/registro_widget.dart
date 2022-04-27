import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../registro2/registro2_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController emailTextController;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  bool switchListTileValue1;
  bool switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
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
                    hintText: 'Nombre de usuario',
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
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Nombre Completo',
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
                  controller: emailTextController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                  controller: passwordTextController,
                  obscureText: !passwordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
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
                        EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
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
                'Aceptas los términos\ny condiciones relacionados\ncon MapOut',
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
                'Apúntame a la newsletter!',
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
                  if (switchListTileValue1) {
                    final user = await createAccountWithEmail(
                      context,
                      emailTextController.text,
                      passwordTextController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    final usersDataCreateData = createUsersDataRecordData(
                      displayName: textController1.text,
                      fullName: textController2.text,
                    );
                    await UsersDataRecord.collection
                        .doc(user.uid)
                        .update(usersDataCreateData);

                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registro2Widget(),
                      ),
                    );
                  }
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
