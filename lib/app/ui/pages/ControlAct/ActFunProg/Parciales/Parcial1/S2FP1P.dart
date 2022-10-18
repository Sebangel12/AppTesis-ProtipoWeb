import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import '../../../../../globalwidgets/PDFView.dart';
import 'package:flutter_meedu/ui.dart';
import '../../../../../routes/routes.dart';
import 'package:flutter/cupertino.dart';

class S2FP1P extends StatefulWidget {
  @override
  State<S2FP1P> createState() => _S2FP1PState();
}

class _S2FP1PState extends State<S2FP1P> {
  late bool _isactive = false;
  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  final _textController = TextEditingController();
  String FileofDelete = '';
  String dir = '/Fundamentos de programación/Primer parcial/Semana 2';

  late Future<ListResult> futureFiles;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref(dir).listAll();
  }

  double progress = 0.0;
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        centerTitle: true,
        title: const Text('Fundamentos de programación P1 - S2'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: FutureBuilder<ListResult>(
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
                      }),
                ),
                Container(
                  color: Colors.transparent,
                  height: 75,
                  width: 50,
                  child: LiquidCircularProgressIndicator(
                    value: progress,
                    valueColor: const AlwaysStoppedAnimation(Color(0xFFEB1D36)),
                    backgroundColor: Colors.transparent,
                    direction: Axis.vertical,
                    center: Text(
                      "$progress%",
                      style: GoogleFonts.poppins(
                          color: Colors.black87, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CupertinoButton(
                  color: Colors.black,
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();

                    if (result != null) {
                      Uint8List? file = result.files.first.bytes;
                      String fileName = result.files.first.name;

                      UploadTask task = FirebaseStorage.instance
                          .ref()
                          .child("$dir/$fileName")
                          .putData(file!);

                      task.snapshotEvents.listen((event) {
                        setState(() {
                          progress = ((event.bytesTransferred.toDouble() /
                                  event.totalBytes.toDouble() *
                                  100)
                              .roundToDouble());
                        });
                      });
                    }
                  },
                  child: const Text("Subir archivo"),
                ),
                const SizedBox(
                  height: 52,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20),
                  color: Colors.white,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText:
                          'Ingrese el nombre del documento con su extension',
                      suffix: Checkbox(
                        onChanged: (bool? valueIn) {
                          setState(() {
                            _isactive = valueIn!;
                            FileofDelete = _textController.text;
                          });
                        },
                        value: _isactive,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: CupertinoButton(
                      color: Colors.black,
                      child: Text('Borrar el documento'),
                      onPressed: () => DeleteFiles()),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFEB1D36),
          child: const Icon(Icons.keyboard_return),
          onPressed: () =>
              router.pushNamedAndRemoveUntil(Routes.CONTRON_ACT_FUNPROG)));
  void DeleteFiles() async {
    final filedelet = FirebaseStorage.instance.ref(dir).child(FileofDelete);
    //print('$filedelet .lol');
    await filedelet.delete();
  }

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
