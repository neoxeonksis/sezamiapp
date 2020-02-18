import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Asesoria extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no sre ejecuta el comando $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Asesoría Migratoria'),
        ),
        body: new Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            color: Colors.blue,
          ),
        ));
  }
}
