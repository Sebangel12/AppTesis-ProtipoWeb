import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../data/urlsAM.dart';
import '../../../../../routes/routes.dart';

class MActsemAMparcial2 extends StatelessWidget {
  const MActsemAMparcial2({Key? key}) : super(key: key);
//adminatel.redestel@espe.edu.ec
//#Adminredestel@2022

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        centerTitle: true,
        title: const Text('Aplicaciónes Móviles - P2'),
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
                            onPressed: () =>
                                router.pushNamed(Routes.SEM1P2APP)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url1);
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
                            onPressed: () =>
                                router.pushNamed(Routes.SEM2P2APP)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url2);
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
                            onPressed: () =>
                                router.pushNamed(Routes.SEM3P2APP)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url3);
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
                            onPressed: () =>
                                router.pushNamed(Routes.SEM4P2APP)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url4);
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
                            onPressed: () =>
                                router.pushNamed(Routes.SEM5P2APP)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url5);
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
                            onPressed: () =>
                                router.pushNamed(Routes.SEM6P2APP)),
                        SizedBox(width: 10),
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          onPressed: () {
                            // ignore: deprecated_member_use
                            launch(EFAMP2().url6);
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
