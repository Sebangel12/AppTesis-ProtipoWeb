import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/data/urlsBD.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../routes/routes.dart';
import 'AS1BD1P.dart';
import 'AS2BD1P.dart';
import 'AS3BD1P.dart';
import 'AS4BD1P.dart';
import 'AS5BD1P.dart';
import 'AS6BD1P.dart';

class MActsemBDparcial1 extends StatefulWidget {
  const MActsemBDparcial1({Key? key}) : super(key: key);

  @override
  State<MActsemBDparcial1> createState() => _MActsemBDparcial1State();
}

class _MActsemBDparcial1State extends State<MActsemBDparcial1> {
//adminatel.redestel@espe.edu.ec
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        centerTitle: true,
        title: const Text('Bases de Datos - P1'),
      ),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: ElasticInLeft(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 1',
                            ),
                            onPressed: () => router.pushNamed(Routes.SEM1P1BD)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFBDP1().url1);
                          },
                          child: const Text(
                            'Evaluación formativa',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 2',
                            ),
                            onPressed: () => router.pushNamed(Routes.SEM2P1BD)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFBDP1().url2);
                          },
                          child: const Text(
                            'Evaluación formativa',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 3',
                            ),
                            onPressed: () => router.pushNamed(Routes.SEM3P1BD)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFBDP1().url3);
                          },
                          child: const Text(
                            'Evaluación formativa',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 4',
                            ),
                            onPressed: () => router.pushNamed(Routes.SEM4P1BD)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFBDP1().url4);
                          },
                          child: const Text(
                            'Evaluación formativa',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 5',
                            ),
                            onPressed: () => router.pushNamed(Routes.SEM5P1BD)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFBDP1().url5);
                          },
                          child: const Text(
                            'Evaluación formativa',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                            color: (Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            child: const Text(
                              'Semana 6',
                            ),
                            onPressed: () => router.pushNamed(Routes.SEM6P1BD)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFBDP1().url6);
                          },
                          child: const Text(
                            'Evaluación formativa',
                          ),
                        )
                      ],
                    ),
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
