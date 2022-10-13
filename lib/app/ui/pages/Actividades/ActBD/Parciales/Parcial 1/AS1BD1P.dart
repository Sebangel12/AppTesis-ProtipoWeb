import 'dart:io';
import 'package:atel_redes_telecom_prot/app/ui/globalwidgets/PDFView.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../../../../../globalwidgets/pdfviewpage.dart';

class AS1BD1P extends StatefulWidget {
  @override
  State<AS1BD1P> createState() => _AS1BD1PState();
}

class _AS1BD1PState extends State<AS1BD1P> {
  String dir = '/Bases de datos/Primer parcial/Semana 1';
  late Future<ListResult> futureFiles;

  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref(dir).listAll();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF388E3C),
          centerTitle: true,
          title: const Text('Base de datos P1 - S1'),
        ),
        body: FutureBuilder<ListResult>(
          future: futureFiles,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!.items;
              return ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  return ListTile(
                    title: Text(
                      textWidthBasis: TextWidthBasis.parent,
                      file.name,
                    ),
                    trailing: IconButton(
                      color: Colors.black,
                      icon: const Icon(Icons.download),
                      onPressed: () => downloadFiles(file),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Ah ocurrido un error"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );

  Future downloadFiles(Reference ref) async {
    final url = await ref.getDownloadURL();
    final name = ref.name;
    // ignore: use_build_context_synchronously
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => PDFView(
                  url: url,
                  name: name,
                )));
  }
}
