import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';
import '../../../domain/repositories/authrepos.dart';
import '../../routes/routes.dart';

class MenuDocente extends StatelessWidget {
  const MenuDocente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        centerTitle: true,
        title: const Text('Prototipo Aplicación Movil y Web'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticInLeft(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            primary: (const Color(0xFFFFFFFF)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text("MENÚ")),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    CupertinoButton(
                      color: (Colors.black),
                      padding: const EdgeInsets.only(right: 50, left: 50),
                      //textColor: Colors.black,
                      onPressed: () {
                        router.pushNamed(Routes.INF_CURSO_FUNPROG);
                      },
                      child: const Text(
                        'Fundamentos de Programación',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoButton(
                      color: (Colors.black),
                      padding: const EdgeInsets.only(right: 80, left: 80),
                      //textColor: Colors.black,
                      onPressed: () {
                        router.pushNamed(Routes.INF_CURSO_PROGVIS);
                      },
                      child: const Text(
                        'Programación Visual',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoButton(
                      color: (Colors.black),
                      padding: const EdgeInsets.only(right: 80, left: 80),
                      //textColor: Colors.black,
                      onPressed: () {
                        router.pushNamed(Routes.INF_CURSO_BD);
                      },
                      child: const Text(
                        'Bases de datos',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoButton(
                      color: (Colors.black),
                      padding: const EdgeInsets.only(right: 100, left: 100),
                      //textColor: Colors.black,
                      onPressed: () {
                        router.pushNamed(Routes.INF_CURSO_PROGAPP);
                      },
                      child: const Text(
                        'Aplicaciónes Móviles',
                      ),
                    ),
                    const SizedBox(
                      height: 175,
                    ),
                    CupertinoButton(
                        color: (Color(0xFFEB1D36)),
                        child: const Text(
                          "Cerrar sesión",
                        ),
                        onPressed: () async {
                          await Get.find<authrepor>().SingOut();
                          router.pushNamedAndRemoveUntil(Routes.LOGIN);
                        })
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
