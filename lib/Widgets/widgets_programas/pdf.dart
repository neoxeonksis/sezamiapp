import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
//

class PDF extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PDF> {
  String path;
  @override
  initState() {
    loadPdf();
    super.initState();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
<<<<<<< HEAD
    final path = await _local;
    return File('$path/opera1.pdf');
=======
    final path = await _localPath;
    return File('$path/teste.pdf');
  }

  Future<File> writeCounter(Uint8List stream) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsBytes(stream);
  }

  Future<Uint8List> fetchPost() async {
    final response =
        await http.get('http://sezami.zacatecas.gob.mx/docs/rop2019.pdf');
    final responseJson = response.bodyBytes;

    return responseJson;
>>>>>>> 7a04013fc27659fc3b755cf907ac841eac857515
  }

  loadPdf() async {
    writeCounter(await fetchPost());
    path = (await _localFile).path;

    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (path != null) {
      return Center(
        //child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: ((MediaQuery.of(context).size.height) * 3),
              width: (MediaQuery.of(context).size.width),
              child: PdfViewer(
                filePath: path,
              ),
            ),
          ],
        ),
        //),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
