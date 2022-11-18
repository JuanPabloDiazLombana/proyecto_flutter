///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutterviz/Buscar_Diagnostico.dart';
import 'package:flutterviz/RegistroM.dart';
import 'package:flutterviz/RegistroP.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height * 0.35000000000000003,
                decoration: BoxDecoration(
                  color: Color(0xff3a57e8),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60.0),
                      bottomRight: Radius.circular(60.0)),
                  border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                ),
              ),
            ],
          ),
          Text(
            "Bienvenido",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 45,
              color: Color(0xff000000),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => RegistroM())));
              },
              color: Color(0xff3a57e8),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Crear medico ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: MediaQuery.of(context).size.height * 0.05,
              minWidth: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => RegistroP())));
              },
              color: Color(0xff3a57e8),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Crear Paciente ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: MediaQuery.of(context).size.height * 0.05,
              minWidth: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Buscar_Diagnostico())));
              },
              color: Color(0xff3a57e8),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Diagnostico",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: MediaQuery.of(context).size.height * 0.05,
              minWidth: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Color(0xff3a57e8),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Cerrar Sesion",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              textColor: Color(0xffffffff),
              height: 40,
              minWidth: 140,
            ),
          ),
        ],
      ),
    );
  }
}
