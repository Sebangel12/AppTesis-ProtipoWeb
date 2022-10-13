import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../../../domain/repositories/authrepos.dart';
import '../../../../routes/routes.dart';
import 'Parcial1/S1FP1P.dart';
import 'Parcial1/S2FP1P.dart';
import 'Parcial1/S3FP1P.dart';
import 'Parcial1/S4FP1P.dart';
import 'Parcial1/S5FP1P.dart';
import 'Parcial1/S6FP1P.dart';
import 'Parcial2/S1FP2P.dart';
import 'Parcial2/S2FP2P.dart';
import 'Parcial2/S3FP2P.dart';
import 'Parcial2/S4FP2P.dart';
import 'Parcial2/S5FP2P.dart';
import 'Parcial2/S6FP2P.dart';
import 'Parcial3/S1FP3P.dart';
import 'Parcial3/S2FP3P.dart';
import 'Parcial3/S3FP3P.dart';
import 'Parcial3/S4FP3P.dart';
import 'Parcial3/S5FP3P.dart';
import 'Parcial3/S6FP3P.dart';

class MenParFP extends StatefulWidget {
  @override
  State<MenParFP> createState() => _MenParFPState();
}

class _MenParFPState extends State<MenParFP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF388E3C),
        centerTitle: true,
        title: const Text('Fundamentos de programación'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 120),
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Text('Primer Parcial'),
                onPressed: () => showModalBottomSheet(
                      backgroundColor: const Color(0xFF388E3C),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      )),
                      context: context,
                      builder: (context) => buildshett1(),
                    )),
            const SizedBox(height: 20),
            CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 110),
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Text('Segundo Parcial'),
                onPressed: () => showModalBottomSheet(
                      backgroundColor: const Color(0xFF388E3C),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      )),
                      context: context,
                      builder: (context) => buildshett2(),
                    )),
            const SizedBox(height: 20),
            CupertinoButton(
                padding: EdgeInsets.symmetric(horizontal: 120),
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Text('Tercer Parcial'),
                onPressed: () => showModalBottomSheet(
                      backgroundColor: const Color(0xFF388E3C),
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      )),
                      context: context,
                      builder: (context) => buildshett3(),
                    )),
            const SizedBox(height: 50),
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
        ),
      ),
    );
  }

  Widget buildshett1() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 1',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => router.pushNamed(Routes.S1P1FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 2',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => router.pushNamed(Routes.S2P1FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 3',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => router.pushNamed(Routes.S3P1FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 4',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => router.pushNamed(Routes.S4P1FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 5',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => router.pushNamed(Routes.S5P1FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 6',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => router.pushNamed(Routes.S6P1FP)),
          const SizedBox(height: 20),
        ],
      );
  Widget buildshett2() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 1',
              ),
              onPressed: () => router.pushNamed(Routes.S1P2FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 2',
              ),
              onPressed: () => router.pushNamed(Routes.S2P2FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 3',
              ),
              onPressed: () => router.pushNamed(Routes.S3P2FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 4',
              ),
              onPressed: () => router.pushNamed(Routes.S4P2FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 5',
              ),
              onPressed: () => router.pushNamed(Routes.S5P2FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 6',
              ),
              onPressed: () => router.pushNamed(Routes.S6P2FP)),
          const SizedBox(height: 20),
        ],
      );
  Widget buildshett3() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 1',
              ),
              onPressed: () => router.pushNamed(Routes.S1P3FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 2',
              ),
              onPressed: () => router.pushNamed(Routes.S2P3FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 3',
              ),
              onPressed: () => router.pushNamed(Routes.S3P3FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 4',
              ),
              onPressed: () => router.pushNamed(Routes.S4P3FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 5',
              ),
              onPressed: () => router.pushNamed(Routes.S5P3FP)),
          const SizedBox(
            height: 20,
          ),
          CupertinoButton(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: const Text(
                'Semana 6',
              ),
              onPressed: () => router.pushNamed(Routes.S6P3FP)),
          const SizedBox(height: 20),
        ],
      );
}
