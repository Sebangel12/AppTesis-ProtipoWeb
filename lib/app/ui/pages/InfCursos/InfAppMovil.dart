import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Actividades/ActProgMov/Parciales/Parcial%201/MActSemPM1P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Actividades/ActProgMov/Parciales/Parcial%202/MActSemPM2P.dart';
import 'package:atel_redes_telecom_prot/app/ui/pages/Actividades/ActProgMov/Parciales/Parcial%203/MActSemPM3P.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import '../../routes/routes.dart';
import '../Menu/menu.dart';

class InfCursoProgAPP extends StatelessWidget {
  const InfCursoProgAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF388E3C),
          centerTitle: true,
          title: const Text('Prototipo Aplicación Movil y Web'),
        ),
        body: Container(
          alignment: Alignment.centerRight,
          child: ListView(
            children: [
              ElasticInLeft(
                duration: const Duration(seconds: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    //-------------------Titulo pagina---------------------------
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 50, left: 50),
                            primary: (const Color(0xFFFFFFFF)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text("Información Aplicaciónes Móviles"),
                      ),
                    ),
                    //-----------------------------------------------------------
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    //-------------------------------------------------------------
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50),
                              primary: (const Color(0xFFFFFFFF)),
                              textStyle: const TextStyle(fontSize: 25),
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text("Aplicaciones a usar")),
                    ),

                    Card(
                        color: (const Color(0xFF388E3C)),
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                " - SDK de Android",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Visual Studio Code",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - SDK de Flutter",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    //-------------------------------------------------------------
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50),
                              primary: (const Color(0xFFFFFFFF)),
                              textStyle: const TextStyle(fontSize: 25),
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text("Materiales requeridos")),
                    ),

                    Card(
                        color: (const Color(0xFF388E3C)),
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                " - Computadora: Portatil o de escritorio",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Procesador: Intel core 3,5,7 de 10ma generación",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Memoria RAM: 6 GB (min)",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Capacidad de memoria: 500 GB de almacenamiento SSD o HDD",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Celular (opcional)",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        )),
                    //-------------------------------------------------------------
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.only(right: 50, left: 50),
                              primary: (const Color(0xFFFFFFFF)),
                              textStyle: const TextStyle(fontSize: 25),
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: const Text("Descripción de la materia")),
                    ),

                    const Card(
                      color: (const Color(0xFF388E3C)),
                      child: SizedBox(
                        width: double.maxFinite,
                        height: 150,
                        child: (Text(
                          "  La materia presenta temas de programación relacionada con disposititvos Android, y iOS, "
                          "  se presentaran ejemplos básicos que abarcarán las funciones escenciales en cada lenguaje de programación,"
                          "  saliendo con un conocimiento fundamental sobre la funcion de las aplicaciones y su desarrollo para aplicarlo en el perfil profesional.",
                          style: TextStyle(fontSize: 22.5),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //-------------------------------------------------------------
                    //-------------------------------------------------------------
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              //height: 20,
                              width: 15,
                            ),
                            CupertinoButton(
                              color: (Color(0xFFEB1D36)),
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              onPressed: () =>
                                  router.pushNamed(Routes.MENU1PAPP),
                              child: const Text(
                                'Primer Parcial',
                              ),
                            ),
                            const SizedBox(
                              //height: 50,
                              width: 13,
                            ),
                            CupertinoButton(
                              color: (Color(0xFFEB1D36)),
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              onPressed: () =>
                                  router.pushNamed(Routes.MENU2PAPP),
                              child: const Text(
                                'Segundo Parcial',
                              ),
                            ),
                            const SizedBox(
                              //height: 20,
                              width: 13,
                            ),
                            CupertinoButton(
                              color: (Color(0xFFEB1D36)),
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              onPressed: () =>
                                  router.pushNamed(Routes.MENU3PAPP),
                              child: const Text(
                                'Tercer Parcial',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFEB1D36),
          child: const Icon(Icons.keyboard_return),
          onPressed: () => router.pushNamedAndRemoveUntil(Routes.HOME),
        ));
  }
}
