import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PDFView extends StatefulWidget {
  final String url;
  final String name;
  const PDFView({super.key, required this.url, required this.name});

  @override
  State<PDFView> createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  @override
  Widget build(BuildContext context) {
    final dir = widget.url;
    final name = widget.name;
    //print(dir);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        title: const Text('Descargar el documento, haga click en el botón'),
        centerTitle: true,
      ),
      body: Center(
        child: CupertinoButton(
          color: Colors.black,
          child: Text(
            name,
          ),
          onPressed: () {
            // ignore: deprecated_member_use
            launch(widget.url);
          },
        ),
      ),
    );
  }
}
