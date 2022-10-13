import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Actividades/ActBD/Parciales/Parcial%201/AS1BD1P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActBD/Parciales/MenuParBD.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActFunProg/Parciales/MenuParFP.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgMov/Parciales/MenuParAM.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/ControlAct/ActProgVis/Parciales/MenuParPV.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

import '../../domain/repositories/authrepos.dart';
import '../routes/routes.dart';

class codigo extends StatefulWidget {
  @override
  State<codigo> createState() => _codigoState();
}

class _codigoState extends State<codigo> {
  @override
  Widget build(BuildContext context) {
    String codBD = '12BD34';
    String codAM = '56AM78';
    String codPV = '91PV01';
    String codFP = '12FP13';
    String coding = '';
    final _textcontrolBD = TextEditingController();
    final _textcontrolAM = TextEditingController();
    final _textcontrolPV = TextEditingController();
    final _textcontrolFP = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF066163),
      appBar: AppBar(
        backgroundColor: const Color(0xFF383838),
        centerTitle: true,
        title: const Text('Prototipo Aplicación Movil y Web'),
      ),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: ElasticInLeft(
                duration: const Duration(seconds: 2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              color: Colors.white,
                              width: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                controller: _textcontrolFP,
                                decoration: const InputDecoration(
                                  hintText: 'Código',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.white,
                              width: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                controller: _textcontrolPV,
                                decoration: const InputDecoration(
                                  hintText: 'Código',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.white,
                              width: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                controller: _textcontrolBD,
                                decoration: const InputDecoration(
                                  hintText: 'Código',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              color: Colors.white,
                              width: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                controller: _textcontrolAM,
                                decoration: const InputDecoration(
                                  hintText: 'Código',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            CupertinoButton(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                color: (const Color(0xFFCDBE78)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                child: const Text(
                                  'Fundamentos de Programación',
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  coding = _textcontrolFP.text;
                                  if (coding == codFP) {
                                    _textcontrolFP.clear();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MenParFP(),
                                        ));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: ((_) => const AlertDialog(
                                              title: Text('Código incorrecto'),
                                            )));
                                  }
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                            CupertinoButton(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                color: (const Color(0xFFCDBE78)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                child: const Text(
                                  'Programación Visual',
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  coding = _textcontrolPV.text;
                                  if (coding == codPV) {
                                    _textcontrolPV.clear();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MenParPV(),
                                        ));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: ((_) => const AlertDialog(
                                              title: Text('Código incorrecto'),
                                            )));
                                  }
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                            CupertinoButton(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                color: (const Color(0xFFCDBE78)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                child: const Text(
                                  'Bases de datos',
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  coding = _textcontrolBD.text;
                                  if (coding == codBD) {
                                    _textcontrolBD.clear();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MenParBD(),
                                        ));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: ((_) => const AlertDialog(
                                              title: Text('Código incorrecto'),
                                            )));
                                  }
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                            CupertinoButton(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                color: (const Color(0xFFCDBE78)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                child: const Text(
                                  'Aplicaciones Móviles',
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  coding = _textcontrolAM.text;
                                  if (coding == codAM) {
                                    _textcontrolAM.clear();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MenParPM(),
                                        ));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: ((_) => const AlertDialog(
                                              title: Text('Código incorrecto'),
                                            )));
                                  }
                                }),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 175,
                    ),
                    CupertinoButton(
                        color: const Color(0xFFF2F2F2),
                        child: const Text(
                          "Cerrar sesión",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () async {
                          await Get.find<authrepor>().SingOut();
                          router.pushNamedAndRemoveUntil(Routes.LOGIN);
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
