import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path/path.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDfViewPage extends StatefulWidget {
  final File archv;

  const PDfViewPage({super.key, required this.archv});
  @override
  State<PDfViewPage> createState() => _PDfViewPageState();
}

class _PDfViewPageState extends State<PDfViewPage> {
  @override
  Widget build(BuildContext context) {
    final name = basename(widget.archv.path);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        title: Text(name),
      ),
      body: PDFView(
        filePath: widget.archv.path,
      ),
    );
  }
}
