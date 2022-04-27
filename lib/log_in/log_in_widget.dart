import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../mapa/mapa_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInWidget extends StatefulWidget {
  const LogInWidget({Key key}) : super(key: key);

  @override
  _LogInWidgetState createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final user = await signInWithEmail(
                    context,
                    emailTextController.text,
                    passwordTextController.text,
                  );
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
