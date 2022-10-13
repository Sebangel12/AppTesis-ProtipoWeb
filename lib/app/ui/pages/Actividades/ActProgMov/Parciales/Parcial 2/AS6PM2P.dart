import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../../../../../globalwidgets/PDFView.dart';
import '../../../../../globalwidgets/pdfviewpage.dart';

class AS6PM2P extends StatefulWidget {
  @override
  State<AS6PM2P> createState() => _AS6PM2PState();
}

class _AS6PM2PState extends State<AS6PM2P> {
  String dir = '/Aplicaciónes móviles/Segundo parcial/Semana 6';
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
          title: const Text('Aplicaciónes móviles P2 - S6'),
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
