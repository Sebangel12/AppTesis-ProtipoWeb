import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import '../../routes/routes.dart';

class InfCursoBD extends StatelessWidget {
  const InfCursoBD({Key? key}) : super(key: key);

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
                      margin: const EdgeInsets.only(left: 5),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 50, left: 50),
                            primary: (const Color(0xFFFFFFFF)),
                            textStyle: const TextStyle(fontSize: 25),
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text("Información Bases de Datos"),
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
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                " - Microsoft Acces, SQL Server",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Xamarin",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - Navegador web (Lucidchart)",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black),
                              ),
                              Text(
                                " - MySQL Workbrench",
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
                                " - Cuaderno o libreta",
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
                        height: 200,
                        child: (Text(
                          " La materia abarcará sobre el diseño físico, logico y conceptual de una base de datos, manejo de"
                          " bases de datos en forma de codigo y usando UI y los conceptos basicos a tener en cuenta al momento"
                          " de diseñar una de ellas como las llaves primarias y secundarias, restricciones de campos, validacion de datos, entre otros.",
                          style: TextStyle(fontSize: 22.5),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                                  router.pushNamed(Routes.MENU1PBD),
                              child: const Text(
                                'Primer Parcial',
                                style: TextStyle(color: Colors.black),
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
                                  router.pushNamed(Routes.MENU2PBD),
                              child: const Text(
                                'Segundo Parcial',
                                style: TextStyle(color: Colors.black),
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
                                  router.pushNamed(Routes.MENU3PBD),
                              child: const Text(
                                'Tercer Parcial',
                                style: TextStyle(color: Colors.black),
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
            onPressed: () => router.pushNamedAndRemoveUntil(Routes.HOME)));
  }
}
